class ResortStatsCollection

  def initialize(resort)
    @resort = resort
    @daily_reservations_by_date = ActiveSupport::OrderedHash.new
    @financial_transactions_by_date = ActiveSupport::OrderedHash.new
  end

  def add_daily_reservation(daily_reservation)
    @daily_reservations_by_date[daily_reservation.reservation_date] ||= []

    @daily_reservations_by_date[daily_reservation.reservation_date] << daily_reservation
  end

  def add_financial_transaction(daily_reservation)
    @financial_transactions_by_date[daily_reservation.reservation_date] ||= []

    @financial_transactions_by_date[daily_reservation.reservation_date] << daily_reservation
  end

  def each_day_stats
    @daily_reservations_by_date.each do |reservation_date, daily_reservations|
      yield ResortStats.new(@resort,
                            reservation_date,
                            daily_reservations,
                            @financial_transactions_by_date[reservation_date])
    end
  end

  def average_occupancy
    sum = resort_stats.inject(0) do |memo, resort_stat|
      memo + resort_stat.occupancy
    end
    ((sum / resort_stats.size) * 100).round(2)
  end

  def average_daily_average_rate
    sum = resort_stats.inject(0) do |memo, resort_stat|
      memo + resort_stat.rate_average
    end
    (sum / resort_stats.size).round(2)
  end

  def average_revenue_per_available_room
    sum = resort_stats.inject(0) do |memo, resort_stat|
      memo + resort_stat.revenue_per_available_room
    end
    (sum / resort_stats.size).round(2)
  end

  private

  def resort_stats
    @resort_stats ||= @daily_reservations_by_date.map do |reservation_date, daily_reservations|
      ResortStats.new(@resort, reservation_date, daily_reservations, @financial_transactions_by_date[reservation_date])
    end
  end
end