class ResortStats

  attr_reader :reservation_date, :total_reserved_rooms, :revenue_per_available_room, :occupancy, :rate_average

  def initialize(resort, reservation_date, daily_reservations, financial_transactions)
    financial_transactions ||= []
    Rails.logger.debug "Initialing ResortStats with: #{resort.code}, #{reservation_date}, #{daily_reservations.to_json}, #{financial_transactions.to_json}"

    @reservation_date = reservation_date
    @total_reserved_rooms = daily_reservations.sum(&:reserved_rooms)
    @rate_average = @total_reserved_rooms.zero? ? 0 : (total_rate_in_usd(daily_reservations, financial_transactions) / @total_reserved_rooms).round(2).to_f
    @occupancy = (@total_reserved_rooms.to_f / resort.total_rooms_at(reservation_date))
    @revenue_per_available_room = (@rate_average * @occupancy).round(2).to_f
  end

  def occupancy_percentage
    (@occupancy * 100).round(2)
  end

  private

  # If there are any financial transactions for the day, then use those to calculate the rate average
  def total_rate_in_usd(daily_reservations, financial_transactions)
    financial_trx_sum_rate_in_usd = financial_transactions.sum(&:rate_sum_in_usd)

    if !financial_transactions.empty? && financial_trx_sum_rate_in_usd != 0
      financial_trx_sum_rate_in_usd
    else
      daily_reservations.sum(&:rate_sum_in_usd)
    end
  end

end