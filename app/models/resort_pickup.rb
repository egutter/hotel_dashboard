class ResortPickup

  def initialize(resort)
    @resort = resort
    @daily_reservations_by_date = ActiveSupport::OrderedHash.new
  end

  def add_daily_reservation_for_start_date(daily_reservation)
    add_daily_reservation_for_key(daily_reservation, :start_date_reservations)
  end

  def add_daily_reservation_for_end_date(daily_reservation)
    add_daily_reservation_for_key(daily_reservation, :end_date_reservations)
  end

  def each_day_pickup
    @daily_reservations_by_date.each do |reservation_date, start_and_end_date_daily_reservations|
      Rails.logger.debug "each_day_pickup #{reservation_date}, #{start_and_end_date_daily_reservations.to_json}"

      start_date_daily_reservations_stats = ResortStats.new(@resort,
                                                            reservation_date,
                                                            start_and_end_date_daily_reservations[:start_date_reservations])
      end_date_daily_reservations_stats = ResortStats.new(@resort,
                                                            reservation_date,
                                                            start_and_end_date_daily_reservations[:end_date_reservations])

      yield DailyPickup.new(reservation_date, start_date_daily_reservations_stats, end_date_daily_reservations_stats)
    end
  end

  private

  def add_daily_reservation_for_key(daily_reservation, key)
    @daily_reservations_by_date[daily_reservation.reservation_date] ||= {
      :start_date_reservations => [],
      :end_date_reservations => []
    }

    @daily_reservations_by_date[daily_reservation.reservation_date][key] << daily_reservation
  end

end