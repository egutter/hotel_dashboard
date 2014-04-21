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

  def index_at(a_date)
    @daily_reservations_by_date.keys.index { |reservation_date| reservation_date.to_date == a_date }
  end

  def each_day_stats
    @daily_reservations_by_date.each do |reservation_date, daily_reservations|
      yield ResortStats.new(@resort,
                            reservation_date,
                            daily_reservations,
                            @financial_transactions_by_date[reservation_date])
    end
  end

  def average_occupancy_up_to(a_date)
    calculate_average_occupancy_with filter_stats_by_date(a_date)
  end

  def average_occupancy
    calculate_average_occupancy_with(resort_stats)
  end

  def average_daily_average_rate_up_to(a_date)
    calculate_average_daily_average_rate_with filter_stats_by_date(a_date)
  end

  def average_daily_average_rate
    calculate_average_daily_average_rate_with(resort_stats)
  end

  def average_revenue_per_available_room_up_to(a_date)
    calculate_average_revenue_per_available_room_with filter_stats_by_date(a_date)
  end

  def average_revenue_per_available_room
    calculate_average_revenue_per_available_room_with resort_stats
  end

  def resort_stats
    @resort_stats ||= @daily_reservations_by_date.map do |reservation_date, daily_reservations|
      ResortStats.new(@resort, reservation_date, daily_reservations, @financial_transactions_by_date[reservation_date])
    end
  end

  private

  def filter_stats_by_date(a_date)
    resort_stats.select { |resort_stat| resort_stat.reservation_date <= a_date }
  end

  def calculate_average_revenue_per_available_room_with(stats_collection)
    sum = stats_collection.inject(0) do |memo, resort_stat|
      memo + resort_stat.revenue_per_available_room
    end
    return 0.0 if stats_collection.empty?

    (sum / stats_collection.size).round(2)
  end

  def calculate_average_daily_average_rate_with(stats_collection)
    sum = stats_collection.inject(0) do |memo, resort_stat|
      memo + resort_stat.rate_average
    end
    return 0.0 if stats_collection.empty?

    (sum / stats_collection.size).round(2)
  end


  def calculate_average_occupancy_with(stats_collection)
    sum = stats_collection.inject(0) do |memo, resort_stat|
      memo + resort_stat.occupancy
    end
    return 0.0 if stats_collection.empty?

    ((sum / stats_collection.size) * 100).round(2)
  end

end