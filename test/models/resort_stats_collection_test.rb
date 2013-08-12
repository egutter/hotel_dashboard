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
    assert_equal ['07/08', '08/08'], result
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

end