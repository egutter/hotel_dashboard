class HomeController < ApplicationController

  def index
    @date_range = Time.now.at_beginning_of_month.at_beginning_of_day..Time.now.at_end_of_month.at_end_of_day

    @resort_stats = {}

    Resort::ALL_CODES.each do |resort_code|
      @resort_stats[resort_code] = OccupancyVsRateReport.new(resort_code,
                                                             @date_range,
                                                             [],
                                                             [],
                                                             RepositoryFactory.new).generate_report_data
    end
  end
end
