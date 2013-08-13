class OccupancyVsRateReport

  def initialize(resort_code, date_range, rate_code_list, origin_of_booking_list, repository_factory)
    @resort_code, @date_range = resort_code, date_range
    @rate_code_list, @origin_of_booking_list = rate_code_list, origin_of_booking_list
    @repository_factory = repository_factory
  end

  def generate_report_data
    resort = resort_repository.find_by_code_in_date_range(@resort_code, @date_range)
    resort_stats = ResortStatsCollection.new(resort)

    filter = QueryFilter.new.add(:resort, resort).add(:reservation_date, @date_range).
      add(:rate_codes, @rate_code_list).
      add(:origin_of_bookings, @origin_of_booking_list)

    daily_reservation_repository.each_with_filter(filter) {|daily_reservation|
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