class ReportsController < ApplicationController

  def index
    @date_range = Date.today.at_beginning_of_month..Date.today.advance(:months => 2).at_end_of_month
  end

  def occupancy_data
    date_range = Date.strptime(params[:from_date], "%d/%m/%Y")..Date.strptime(params[:to_date], "%d/%m/%Y")

    @data = OccupancyVsRateReport.new(resort_code_by_name(), date_range, RepositoryFactory.new).generate_report_data
    respond_to do |format|
      format.json { render json: @data }
    end
  end

  def resort_code_by_name
    {'sheltown' => Resort::SHELTOWN_CODE,
     'impala' => Resort::IMPALA_CODE,
     'embajador' => Resort::EMBAJADOR_CODE}[params[:hotel]]
  end
end
