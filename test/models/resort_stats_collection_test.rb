require 'test_helper'
require 'minitest/autorun'

class ResortStatsCollectionTest < MiniTest::Unit::TestCase

  def setup
    resort = Resort.impala 100, []
    @stats = ResortStatsCollection.new(resort)

    @stats.add_daily_reservation(DailyReservation.new(10, Date.new(2013, 8, 7), 1000, 'USD', 1))
    @stats.add_daily_reservation(DailyReservation.new(20, Date.new(2013, 8, 7), 8000, 'ARS', 0.2))
    @stats.add_daily_reservation(DailyReservation.new(30, Date.new(2013, 8, 8), 2800, 'USD', 1))
    @stats.add_daily_reservation(DailyReservation.new(10, Date.new(2013, 8, 8), 5000, 'ARS', 0.2))
  end

  def test_each_day_stats_size
    result = []
    @stats.each_day_stats {|stats| result << stats.reservation_date}
    assert_equal 2, result.size
  end

  def test_each_day_stats_reservation_date
    result = []
    @stats.each_day_stats {|stats| result << stats.reservation_date}
    assert_equal [Date.new(2013, 8, 7), Date.new(2013, 8, 8)], result
  end

  def test_each_day_stats_occupancy
    result = []
    @stats.each_day_stats {|stats| result << stats.occupancy_percentage}
    assert_equal [30, 40], result
  end

  def test_each_day_stats_rate
    result = []
    @stats.each_day_stats {|stats| result << stats.rate_average}
    assert_equal [86.67, 95], result
  end

  def test_each_day_stats_revPar
    result = []
    @stats.each_day_stats {|stats| result << stats.revenue_per_available_room}
    assert_equal [26, 38], result
  end

  def test_average_occupancy
    assert_equal 35.0, @stats.average_occupancy
  end

  def test_average_occupancy_up_to
    assert_equal 30.0, @stats.average_occupancy_up_to(Date.new(2013, 8, 7))
    assert_equal 35.0, @stats.average_occupancy_up_to(Date.new(2013, 8, 8))
  end

  def test_average_daily_average_rate
    assert_equal 90.84, @stats.average_daily_average_rate
  end

  def test_average_daily_average_rate_up_to
    assert_equal 86.67, @stats.average_daily_average_rate_up_to(Date.new(2013, 8, 7))
    assert_equal 90.84, @stats.average_daily_average_rate_up_to(Date.new(2013, 8, 8))
  end

  def test_average_revenue_per_available_room
    assert_equal 32.0, @stats.average_revenue_per_available_room
  end

  def test_average_revenue_per_available_room_up_to
    assert_equal 26.0, @stats.average_revenue_per_available_room_up_to(Date.new(2013, 8, 7))
    assert_equal 32.0, @stats.average_revenue_per_available_room_up_to(Date.new(2013, 8, 8))
  end
end