class ReportsController < ApplicationController

  def index
    @date_range = Date.today.at_beginning_of_month..Date.today.advance(:months => 2).at_end_of_month
    @pickup_date_range = (Date.today-2)..Date.today
    @pickup_results = PickupReport.new(resort_code_by_name, @date_range, @pickup_date_range, RepositoryFactory.new).generate_report_data
  end

  def occupancy_data
    date_range = Date.strptime(params[:from_date], "%d/%m/%Y")..Date.strptime(params[:to_date], "%d/%m/%Y")

    json_formatter = ResortStatsJsonFormatter.new OccupancyVsRateReport.new(resort_code_by_name(), date_range, RepositoryFactory.new).generate_report_data
    @result = json_formatter.to_json
    respond_to do |format|
      format.json { render json: @result }
    end
  end

  def pickup_data
    @date_range = Date.strptime(params[:from_date], "%d/%m/%Y")..Date.strptime(params[:to_date], "%d/%m/%Y")
    @pickup_date_range = Date.strptime(params[:pickup_from_date], "%d/%m/%Y")..Date.strptime(params[:pickup_to_date], "%d/%m/%Y")
    @pickup_results = PickupReport.new(resort_code_by_name, @date_range, @pickup_date_range, RepositoryFactory.new).generate_report_data
    render :partial => 'reports/pickup_table_body', :layout => false
  end

  private

  def resort_code_by_name
    {'sheltown' => Resort::SHELTOWN_CODE,
     'impala' => Resort::IMPALA_CODE,
     'embajador' => Resort::EMBAJADOR_CODE}[params[:hotel]]
  end
end
