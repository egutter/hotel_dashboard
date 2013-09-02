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

    render :partial => 'reports/pickup_table_body', :layout => false
  end

  private

  def resort_code_by_name
    {'sheltown' => Resort::SHELTOWN_CODE,
     'impala' => Resort::IMPALA_CODE,
     'embajador' => Resort::EMBAJADOR_CODE}[params[:hotel]]
  end
end
