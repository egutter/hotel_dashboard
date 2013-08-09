class ResortStats

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
    stats = {:reservation_date => [], :occupancy => [], :rate => [], :revPar => []}
    @daily_reservations_by_date.each do |reservation_date, daily_reservations|
      total_reserved_rooms = daily_reservations.sum(&:reserved_rooms)
      rate_average = (daily_reservations.sum(&:rate_sum_in_usd) / total_reserved_rooms).round(2)
      occupancy = (total_reserved_rooms.to_f / @resort.total_rooms_at(reservation_date)).round(2)
      stats[:reservation_date] << reservation_date
      stats[:occupancy] << occupancy * 100
      stats[:rate] << rate_average.to_f
      stats[:revPar] << (rate_average * occupancy).round(2).to_f
    end
    stats
  end
end