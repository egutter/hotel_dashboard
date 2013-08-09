require 'test_helper'
require 'minitest/autorun'

class ResortTest < MiniTest::Unit::TestCase

  def test_total_rooms_at_without_room_repairs
    resort = Resort.impala 100, []

    assert_equal 100, resort.total_rooms_at(Date.yesterday), "When no room repairs, total rooms at any date should be equal to the resort rooms"
  end

  def test_total_rooms_with_one_room_repairs_in_date
    start_repair = Date.yesterday
    end_repair = Date.tomorrow
    resort = Resort.impala 100, [RoomRepair.new(start_repair..end_repair)]

    assert_equal 99, resort.total_rooms_at(Date.today), "When one room repairs, total rooms at a date should be equal to the resort rooms minus the room repairs"
  end

  def test_total_rooms_with_two_room_repairs_in_date
    yesterday = Date.yesterday
    tomorrow = Date.tomorrow
    resort = Resort.impala 100, [RoomRepair.new(yesterday..tomorrow), RoomRepair.new((yesterday + 1)..(tomorrow + 1))]

    assert_equal 98, resort.total_rooms_at(Date.today), "When one room repairs, total rooms at a date should be equal to the resort rooms minus the room repairs"
  end

  def test_total_rooms_with_one_room_repairs_before_date
    start_repair = Date.yesterday
    end_repair = Date.tomorrow
    resort = Resort.impala 100, [RoomRepair.new(start_repair..end_repair)]

    assert_equal 100, resort.total_rooms_at(Date.tomorrow + 1), "When room repairs before given date, total rooms at a date should be equal to the resort rooms"
  end

  def test_total_rooms_with_one_room_repairs_after_date
    start_repair = Date.yesterday
    end_repair = Date.tomorrow
    resort = Resort.impala 100, [RoomRepair.new(start_repair..end_repair)]

    assert_equal 100, resort.total_rooms_at(Date.yesterday - 1), "When room repairs after given date, total rooms at a date should be equal to the resort rooms minus the room repairs"
  end
end