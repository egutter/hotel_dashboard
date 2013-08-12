class ResortStatsCollection

  def initialize(resort)
    @resort = resort
    @daily_reservations_by_date = {}
  end

  def add_daily_reservation(daily_reservation)
    @daily_reservations_by_date[format_date(daily_reservation)] ||= []

    @daily_reservations_by_date[format_date(daily_reservation)] << daily_reservation
  end

  def format_date(daily_reservation)
    daily_reservation.reservation_date.strftime('%d/%m')
  end

  def each_day_stats
    @daily_reservations_by_date.each do |reservation_date, daily_reservations|
      yield ResortStats.new(@resort, reservation_date, daily_reservations)
    end
  end
end