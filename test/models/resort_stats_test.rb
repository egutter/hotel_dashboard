require 'test_helper'
require 'minitest/autorun'

class ResortStatsTest < MiniTest::Unit::TestCase

  def setup
    resort = Resort.impala 100, []
    @stats = ResortStats.new(resort)

    @stats.add_daily_reservation(DailyReservation.new(10, Date.new(2013, 8, 7), 1000, 'USD', 1))
    @stats.add_daily_reservation(DailyReservation.new(20, Date.new(2013, 8, 7), 8000, 'ARS', 0.2))
    @stats.add_daily_reservation(DailyReservation.new(30, Date.new(2013, 8, 8), 2800, 'USD', 1))
    @stats.add_daily_reservation(DailyReservation.new(10, Date.new(2013, 8, 8), 5000, 'ARS', 0.2))
  end

  def test_each_day_stats_size
    assert_equal 4, @stats.each_day_stats.size
    assert_equal 2, @stats.each_day_stats[:reservation_date].size
    assert_equal 2, @stats.each_day_stats[:occupancy].size
    assert_equal 2, @stats.each_day_stats[:rate].size
    assert_equal 2, @stats.each_day_stats[:revPar].size
  end

  def test_each_day_stats_reservation_date
    assert_equal ['07/08', '08/08'], @stats.each_day_stats[:reservation_date]
  end

  def test_each_day_stats_occupancy
    assert_equal [30, 40], @stats.each_day_stats[:occupancy]
  end

  def test_each_day_stats_rate
    assert_equal [86.67, 95], @stats.each_day_stats[:rate]
  end

  def test_each_day_stats_revPar
    assert_equal [26, 38], @stats.each_day_stats[:revPar]
  end

end