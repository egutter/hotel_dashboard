require File.dirname(__FILE__) + '/../test_helper'
require File.dirname(__FILE__) + '/sequel_test_case'
require 'minitest/autorun'

class ResortRepositoryTest < MiniTest::Unit::TestCase

  def setup
    DB[:resort].insert(:resort => Resort::IMPALA_CODE, :tot_rooms => 100)
    DB[:room_repairs].insert(:resort => Resort::IMPALA_CODE, :begin_date => Date.yesterday, :end_date => Date.tomorrow, :room_status => 'OS')
    DB[:room_repairs].insert(:resort => Resort::IMPALA_CODE, :begin_date => Date.yesterday, :end_date => Date.tomorrow, :room_status => 'OO')
    DB[:room_repairs].insert(:resort => Resort::IMPALA_CODE, :begin_date => Date.today + 5, :end_date => Date.tomorrow + 6, :room_status => 'OO')
  end

  def test_find_resort_by_code_in_date_range
    resort = ResortRepository.find_by_code_in_date_range(Resort::IMPALA_CODE, Date.yesterday..Date.today)

    assert_equal Resort::IMPALA_CODE, resort.code, "Resort code should match"
    assert_equal 100, resort.total_rooms, "Resort total room should match"
    assert_equal 1, resort.room_repairs.size, "Resort room repairs should match"
  end
end