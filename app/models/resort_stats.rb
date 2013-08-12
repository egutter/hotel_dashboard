class ResortStats

  attr_reader :reservation_date, :total_reserved_rooms, :revenue_per_available_room, :occupancy, :rate_average

  def initialize(resort, reservation_date, daily_reservations)
    @reservation_date = reservation_date
    @total_reserved_rooms = daily_reservations.sum(&:reserved_rooms)
    @rate_average = @total_reserved_rooms.zero? ? 0 : (daily_reservations.sum(&:rate_sum_in_usd) / @total_reserved_rooms).round(2).to_f
    @occupancy = (@total_reserved_rooms.to_f / resort.total_rooms_at(reservation_date)).round(2)
    @revenue_per_available_room = (@rate_average * @occupancy).round(2).to_f
  end

  def occupancy_percentage
    @occupancy * 100
  end
end