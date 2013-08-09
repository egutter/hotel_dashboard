class DailyReservation

  attr_reader :reserved_rooms, :reservation_date, :rate_sum

  def initialize(reserved_rooms, reservation_date, rate_sum, currency_code, currency_exchange_to_usd)
    @reserved_rooms, @reservation_date, @rate_sum = reserved_rooms, reservation_date, rate_sum
    @currency_code, @currency_exchange_to_usd = currency_code, currency_exchange_to_usd
  end

  def rate_sum_in_usd
    @rate_sum * @currency_exchange_to_usd
  end
end