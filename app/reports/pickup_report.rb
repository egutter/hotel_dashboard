class PickupReport

  def initialize(resort_code, date_range, pickup_range, rate_code_list, origin_of_booking_list, repository_factory)
    @resort_code, @date_range, @pickup_range = resort_code, date_range, pickup_range
    @rate_code_list, @origin_of_booking_list = rate_code_list, origin_of_booking_list
    @repository_factory = repository_factory
  end

  def generate_report_data
    resort = resort_repository.find_by_code_in_date_range(@resort_code, @date_range)
    resort_pickup = ResortPickup.new(resort)

    start_pickup_filter = QueryFilter.new.add(:resort, resort).add(:reservation_date, @date_range).
      add(:insert_date, @pickup_range.begin).
      add(:rate_codes, @rate_code_list).
      add(:origin_of_bookings, @origin_of_booking_list)

    daily_reservation_repository.
      each_with_filter(start_pickup_filter) {|daily_reservation|
        resort_pickup.add_daily_reservation_for_start_date(daily_reservation)
    }

    end_pickup_filter = QueryFilter.new.add(:resort, resort).add(:reservation_date, @date_range).
      add(:insert_date, @pickup_range.end).
      add(:rate_codes, @rate_code_list).
      add(:origin_of_bookings, @origin_of_booking_list)

    daily_reservation_repository.
      each_with_filter(end_pickup_filter) {|daily_reservation|
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