class PickupReport

  def initialize(resort_code, date_range, pickup_range, repository_factory)
    @resort_code, @date_range, @pickup_range = resort_code, date_range, pickup_range
    @repository_factory = repository_factory
  end

  def generate_report_data
    resort = resort_repository.find_by_code_in_date_range(@resort_code, @date_range)
    resort_pickup = ResortPickup.new(resort)

    daily_reservation_repository.
      with_each_find_by_resort_date_range_and_insert_date(resort, @date_range, @pickup_range.begin) {|daily_reservation|
        resort_pickup.add_daily_reservation_for_start_date(daily_reservation)
    }
    daily_reservation_repository.
      with_each_find_by_resort_date_range_and_insert_date(resort, @date_range, @pickup_range.end) {|daily_reservation|
        resort_pickup.add_daily_reservation_for_end_date(daily_reservation)
    }
    resort_pickup
  end

  def daily_reservation_repository
    @repository_factory.daily_reservation_repository
  end

  def resort_repository
    @repository_factory.resort_repository
  end
end