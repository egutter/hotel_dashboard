class DailyPickup

  attr_reader :reservation_date

  def initialize(reservation_date, start_date_daily_reservations_stats, end_date_daily_reservations_stats)
    @reservation_date = reservation_date
    @start_date_daily_reservations_stats = start_date_daily_reservations_stats
    @end_date_daily_reservations_stats = end_date_daily_reservations_stats
  end

  def reservations_at_begin_date
    @start_date_daily_reservations_stats.total_reserved_rooms
  end

  def reservations_at_end_date
    @end_date_daily_reservations_stats.total_reserved_rooms
  end

  def pickup_rooms
    self.reservations_at_end_date - self.reservations_at_begin_date
  end

  def occupancy_percentage_at_end_date
    @end_date_daily_reservations_stats.occupancy_percentage
  end

  def average_rate_at_end_date
    @end_date_daily_reservations_stats.rate_average
  end

end