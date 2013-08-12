class OccupancyVsRateReport

  def initialize(resort_code, date_range, repository_factory)
    @resort_code, @date_range = resort_code, date_range
    @repository_factory = repository_factory
  end

  def generate_report_data
    resort = resort_repository.find_by_code_in_date_range(@resort_code, @date_range)
    resort_stats = ResortStatsCollection.new(resort)
    daily_reservation_repository.with_each_find_by_resort_and_date_range(resort, @date_range) {|daily_reservation|
      resort_stats.add_daily_reservation(daily_reservation)
    }
    resort_stats
  end

  def daily_reservation_repository
    @repository_factory.daily_reservation_repository
  end

  def resort_repository
    @repository_factory.resort_repository
  end
end