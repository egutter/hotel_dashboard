class ReportsController < ApplicationController

  def index
    @date_range = Time.now.at_beginning_of_month.at_beginning_of_day..Time.now.advance(:months => 2).at_end_of_month.at_end_of_day
    @pickup_date_range = Time.now.ago(2.days).at_end_of_day..Time.now.at_end_of_day

    @rate_code_list = ''
    @origin_of_booking_list = ''
    @pickup_results = PickupReport.new(resort_code_by_name, @date_range, @pickup_date_range, @rate_code_list, @origin_of_booking_list, RepositoryFactory.new).generate_report_data

    @rate_codes = RateCodeRepository.find_by_resort_code resort_code_by_name
    @origin_of_bookings = OriginOfBookingRepository.find_by_resort_code resort_code_by_name

  end

  def occupancy_data
    date_range = Time.strptime(params[:from_date], "%d/%m/%Y").at_beginning_of_day..Time.strptime(params[:to_date], "%d/%m/%Y").at_end_of_day
    rate_code_list = params[:rate_code]
    origin_of_booking_list = params[:origin_of_booking]

    report_data = OccupancyVsRateReport.new(resort_code_by_name(), date_range, rate_code_list, origin_of_booking_list, RepositoryFactory.new).generate_report_data
    json_formatter = ResortStatsJsonFormatter.new report_data

    @result = json_formatter.to_json
    respond_to do |format|
      format.json { render json: @result }
    end
  end

  def pickup_data
    @date_range = Time.strptime(params[:from_date], "%d/%m/%Y").at_beginning_of_day..Time.strptime(params[:to_date], "%d/%m/%Y").at_end_of_day
    @pickup_date_range = Time.strptime(params[:pickup_from_date], "%d/%m/%Y").at_end_of_day..Time.strptime(params[:pickup_to_date], "%d/%m/%Y").at_end_of_day
    rate_code_list = params[:rate_code]
    origin_of_booking_list = params[:origin_of_booking]

    @pickup_results = PickupReport.new(resort_code_by_name, @date_range, @pickup_date_range, rate_code_list, origin_of_booking_list, RepositoryFactory.new).generate_report_data

    respond_to do |format|
      format.html { render :partial => 'reports/pickup_table_body', :layout => false }
      format.csv { send_data PickupStatsCsvFormatter.new(@pickup_date_range, @pickup_results).to_csv }
    end

  end

  def target_kpi
    total_date_range       = Time.strptime(params[:from_date], "%d/%m/%Y").at_beginning_of_day..Time.strptime(params[:to_date], "%d/%m/%Y").at_end_of_day
    rate_code_list         = params[:rate_code]
    origin_of_booking_list = params[:origin_of_booking]

    adr_target       = params[:adr_target].present? ? params[:adr_target].try(:to_f) : nil
    occupancy_target = params[:occupancy_target].present? ? (params[:occupancy_target].try(:to_f) / 100).round(2) : nil
    rev_par_target   = params[:rev_par_target].to_f

    total_days_covered = ((total_date_range.end-total_date_range.begin)/(60*60*24)).round
    today_or_last_day_of_range = [Time.now.yesterday.end_of_day, total_date_range.end].min
    date_range_from_begin_to_now  = total_date_range.begin..today_or_last_day_of_range
    days_covered_from_begin_to_now = ((date_range_from_begin_to_now.end-date_range_from_begin_to_now.begin)/(60*60*24)).round
    days_covered_from_now_to_end = ((total_date_range.end-date_range_from_begin_to_now.end)/(60*60*24)).round

    resort_stats_from_begin_to_now = OccupancyVsRateReport.new(resort_code_by_name,
                                                               date_range_from_begin_to_now,
                                                               rate_code_list,
                                                               origin_of_booking_list,
                                                               RepositoryFactory.new).generate_report_data

    rev_par_from_begin_to_now = resort_stats_from_begin_to_now.average_revenue_per_available_room

    if days_covered_from_now_to_end < 1
      days_covered_from_now_to_end = 0
      calculated_target_from_now_to_end = 0.0
    else
      # User entered ADR Target, then we calculate Occupancy %
      if adr_target.present?
        calculated_target_from_begin_to_now = resort_stats_from_begin_to_now.average_occupancy
        calculated_target_from_now_to_end   = ((rev_par_target * total_days_covered) - (rev_par_from_begin_to_now * days_covered_from_begin_to_now)) / (adr_target * days_covered_from_now_to_end)
        calculated_target_from_now_to_end = (calculated_target_from_now_to_end*100)
      else # User entered Occupancy Target, then we calculate ADR
        calculated_target_from_begin_to_now = resort_stats_from_begin_to_now.average_daily_average_rate
        calculated_target_from_now_to_end   = ((rev_par_target * total_days_covered) - (rev_par_from_begin_to_now * days_covered_from_begin_to_now)) / (occupancy_target * days_covered_from_now_to_end)
      end
    end

    @result = ([nil] * days_covered_from_begin_to_now) + ([calculated_target_from_now_to_end.round(2)] * days_covered_from_now_to_end)
    respond_to do |format|
      format.json { render json: @result }
    end
  end

  private

  def resort_code_by_name
    {'sheltown' => Resort::SHELTOWN_CODE,
     'impala' => Resort::IMPALA_CODE,
     'embajador' => Resort::EMBAJADOR_CODE}[params[:hotel]]
  end
end
