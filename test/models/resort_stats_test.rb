require 'test_helper'
require 'minitest/autorun'

class ResortStatsTest < MiniTest::Unit::TestCase

  def setup
    @resort = Resort.new(Resort::IMPALA_CODE, 100, [])
    @reservation_date = Date.today

    @daily_reservations = [DailyReservation.new(10, Date.new(2013, 8, 7), 1000, 'USD', 1),
                           DailyReservation.new(15, Date.new(2013, 8, 7), 1500, 'USD', 1)
    ]
    @financial_transactions = [DailyReservation.new(0, Date.new(2013, 8, 7), 2000, 'ARS', 0.5),
                           DailyReservation.new(0, Date.new(2013, 8, 7), 5000, 'ARS', 0.5)
    ]
  end

  def test_reservation_date
    stats = ResortStats.new(@resort, @reservation_date, @daily_reservations, [])
    assert_equal Date.today, stats.reservation_date
  end

  def test_total_reserved_rooms_should_sum_all_daily_reservations
    stats = ResortStats.new(@resort, @reservation_date, @daily_reservations, [])
    assert_equal 25, stats.total_reserved_rooms
  end

  def test_rate_average_should_be_zero_when_none_reserved_rooms
    stats = ResortStats.new(@resort, @reservation_date, [], [])
    assert_equal 0, stats.rate_average
  end

  def test_rate_average_should_be_rate_in_usd_divided_by_total_reserved_rooms
    stats = ResortStats.new(@resort, @reservation_date, @daily_reservations, [])
    assert_equal 100, stats.rate_average
  end

  def test_rate_average_should_be_financial_trx_rate_in_usd_divided_by_total_reserved_rooms
    stats = ResortStats.new(@resort, @reservation_date, @daily_reservations, @financial_transactions)
    assert_equal 140, stats.rate_average
  end

  def test_occupancy_percentage_should_be_total_reserved_rooms_divided_by_resort_rooms
    stats = ResortStats.new(@resort, @reservation_date, @daily_reservations, [])
    assert_equal 25, stats.occupancy_percentage
  end

  def test_revenue_per_available_room_should_be_rate_average_times_occupancy
    stats = ResortStats.new(@resort, @reservation_date, @daily_reservations, [])
    assert_equal 25, stats.revenue_per_available_room
  end
end