require File.dirname(__FILE__) + '/../test_helper'
require File.dirname(__FILE__) + '/sequel_test_case'
require 'minitest/autorun'

class AllotmentRepositoryTest < MiniTest::Unit::TestCase

  def xtest_find_with_filter_should_return_one_row_per_day_and_currency

    filter = QueryFilter.new.add(:resort, impala).add(:reservation_date, Date.yesterday..Date.tomorrow)

    daily_reservations = AllotmentRepository.find_with_filter(filter)

    assert_equal 4, daily_reservations.size, "Should retrieve one result per reserved day and currency code"
  end

  def impala
    Resort.impala(100, [])
  end

end