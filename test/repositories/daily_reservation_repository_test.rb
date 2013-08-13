require File.dirname(__FILE__) + '/../test_helper'
require File.dirname(__FILE__) + '/sequel_test_case'
require 'minitest/autorun'

class DailyReservationRepositoryTest < MiniTest::Unit::TestCase

  def setup
    @resv_daily_el_seq = 0
    should_include_room_category = [1, 1001, 23123, 0]
    should_exclude_room_category = [-1, -2, -1232]
    new_daily_reservation(Date.yesterday, 100.0, 'USD', 'RESERVED', should_include_room_category[0], 'RATE_CODE1')
    new_daily_reservation(Date.yesterday, 100.0, 'USD', 'RESERVED', should_exclude_room_category[0], 'RATE_CODE1')
    new_daily_reservation(Date.yesterday, 150.0, 'USD', 'CHECKED IN', should_include_room_category[1], 'RATE_CODE2')
    new_daily_reservation(Date.yesterday, 150.0, 'USD', 'CHECKED IN', should_exclude_room_category[2], 'RATE_CODE1')
    new_daily_reservation(Date.yesterday, 450.0, 'ARS', 'NO SHOW', should_include_room_category[2], 'RATE_CODE1')
    new_daily_reservation(Date.yesterday, 450.0, 'ARS', 'CANCELLED', should_include_room_category[3], 'RATE_CODE1')
    new_daily_reservation(Date.today, 50.0, 'USD', 'RESERVED', should_include_room_category[0], 'RATE_CODE3', 'SABRE')
    new_daily_reservation(Date.today, 300.0, 'ARS', 'CHECKED IN', should_include_room_category[1], 'RATE_CODE1')
    new_daily_reservation(Date.today, 150.0, 'USD', 'RESERVED', should_include_room_category[2], 'RATE_CODE2')
    new_daily_reservation(Date.today, 150.0, 'USD', 'RESERVED', should_exclude_room_category[3], 'RATE_CODE1')
    new_daily_reservation(Date.today, 450.0, 'ARS', 'CANCELLED', should_include_room_category[3], 'RATE_CODE1')
    new_daily_reservation(Date.today, 450.0, 'ARS', 'CHECKED OUT', should_include_room_category[0], 'RATE_CODE1')

    new_usd_foreign_currency()
    new_currency_exchange(Date.yesterday, 0.2)
    new_currency_exchange(Date.today, 0.15)
  end

  def test_find_with_filter_should_return_one_row_per_day_and_currency

    filter = QueryFilter.new.add(:resort, impala).add(:reservation_date, Date.yesterday..Date.tomorrow)

    daily_reservations = DailyReservationRepository.find_with_filter(filter)

    assert_equal 4, daily_reservations.size, "Should retrieve one result per reserved day and currency code"
  end

  def test_find_with_filter_by_insert_date_should_return_reservations_before_insert_date
    yesterday_filter = QueryFilter.new.add(:resort, impala).add(:reservation_date, Date.yesterday..Date.tomorrow).add(:insert_date, Date.yesterday)
    today_filter = QueryFilter.new.add(:resort, impala).add(:reservation_date, Date.yesterday..Date.tomorrow).add(:insert_date, Date.today)

    assert_equal 2, DailyReservationRepository.find_with_filter(yesterday_filter).size
    assert_equal 4, DailyReservationRepository.find_with_filter(today_filter).size
  end

  def test_find_with_filter_should_sum_reserved_rooms
    filter = QueryFilter.new.add(:resort, impala).add(:reservation_date, Date.yesterday..Date.tomorrow)

    daily_reservations = DailyReservationRepository.find_with_filter(filter)

    assert_equal 1, daily_reservations[0].reserved_rooms, "Should count the number of reserved rooms per day"
    assert_equal 2, daily_reservations[1].reserved_rooms, "Should count the number of reserved rooms per day"
    assert_equal 2, daily_reservations[2].reserved_rooms, "Should count the number of reserved rooms per day"
    assert_equal 2, daily_reservations[3].reserved_rooms, "Should count the number of reserved rooms per day"
  end

  def test_find_with_filter_should_sum_rate
    filter = QueryFilter.new.add(:resort, impala).add(:reservation_date, Date.yesterday..Date.tomorrow)

    daily_reservations = DailyReservationRepository.find_with_filter(filter)

    assert_equal 450.0, daily_reservations[0].rate_sum, "Should average the rate of reserved rooms per day"
    assert_equal 250.0, daily_reservations[1].rate_sum, "Should average the rate of reserved rooms per day"
    assert_equal 750.0, daily_reservations[2].rate_sum, "Should average the rate of reserved rooms per day"
    assert_equal 200.0, daily_reservations[3].rate_sum, "Should average the rate of reserved rooms per day"
  end

  def test_find_with_filter_should_find_currency_exchange
    filter = QueryFilter.new.add(:resort, impala).add(:reservation_date, Date.yesterday..Date.tomorrow)

    daily_reservations = DailyReservationRepository.find_with_filter(filter)

    assert_equal 90.0, daily_reservations[0].rate_sum_in_usd, "Should average the rate in usd of reserved rooms per day"
    assert_equal 250.0, daily_reservations[1].rate_sum_in_usd, "Should average the rate in usd of reserved rooms per day"
    assert_equal 112.5, daily_reservations[2].rate_sum_in_usd, "Should average the rate in usd of reserved rooms per day"
    assert_equal 200.0, daily_reservations[3].rate_sum_in_usd, "Should average the rate in usd of reserved rooms per day"
  end

  def test_find_with_filter_by_rate_code_empty_results
    filter = QueryFilter.new.add(:resort, impala).add(:reservation_date, Date.yesterday..Date.tomorrow).add(:rate_codes, ['RATE_CODE5'])

    assert_equal 0, DailyReservationRepository.find_with_filter(filter).size, "No reservations found for this rate code"
  end

  def test_find_with_filter_by_origin_of_booking_empty_results
    filter = QueryFilter.new.add(:resort, impala).add(:reservation_date, Date.yesterday..Date.tomorrow).add(:origin_of_bookings, ['AMADEUS'])

    assert_equal 0, DailyReservationRepository.find_with_filter(filter).size, "No reservations found for this origin of booking"
  end

  def test_find_with_filter_by_origin_of_booking_one_result
    filter = QueryFilter.new.add(:resort, impala).add(:reservation_date, Date.yesterday..Date.tomorrow).add(:origin_of_bookings, ['SABRE', 'AMADEUS'])

    daily_reservations = DailyReservationRepository.find_with_filter(filter)
    assert_equal 1, daily_reservations.size, "One reservations found for this origin of booking"
    assert_equal 50, daily_reservations.first.rate_sum_in_usd, "One reservations found for this origin of booking"
  end

  def test_find_with_filter_by_one_rate_code_found_results
    filter = QueryFilter.new.add(:resort, impala).add(:reservation_date, Date.yesterday..Date.tomorrow).add(:rate_codes, ['RATE_CODE3'])

    daily_reservations = DailyReservationRepository.find_with_filter(filter)
    assert_equal 1, daily_reservations.size, "One reservation found for this rate code"
    assert_equal 50, daily_reservations.first.rate_sum_in_usd, "One reservation found for this rate code"
  end

  def test_find_with_filter_by_one_rate_code_found_results
    filter = QueryFilter.new.add(:resort, impala).add(:reservation_date, Date.yesterday..Date.tomorrow).add(:rate_codes, ['RATE_CODE1', 'RATE_CODE2'])

    daily_reservations = DailyReservationRepository.find_with_filter(filter)

    assert_equal 4, daily_reservations.size, "Two reservations found for this rate code"
    assert_equal 450.0, daily_reservations[0].rate_sum, "Should average the rate of reserved rooms per day"
    assert_equal 250.0, daily_reservations[1].rate_sum, "Should average the rate of reserved rooms per day"
    assert_equal 750.0, daily_reservations[2].rate_sum, "Should average the rate of reserved rooms per day"
    assert_equal 150.0, daily_reservations[3].rate_sum, "Should average the rate of reserved rooms per day"
  end

  def test_find_with_filter_by_null_rate_code_found_all_results
    filter = QueryFilter.new.add(:resort, impala).add(:reservation_date, Date.yesterday..Date.tomorrow).add(:rate_codes, '')

    daily_reservations = DailyReservationRepository.find_with_filter(filter)

    assert_equal 4, daily_reservations.size, "Two reservations found for this rate code"
    assert_equal 450.0, daily_reservations[0].rate_sum, "Should average the rate of reserved rooms per day"
    assert_equal 250.0, daily_reservations[1].rate_sum, "Should average the rate of reserved rooms per day"
    assert_equal 750.0, daily_reservations[2].rate_sum, "Should average the rate of reserved rooms per day"
    assert_equal 200.0, daily_reservations[3].rate_sum, "Should average the rate of reserved rooms per day"
  end

  private

  def new_daily_reservation(reservation_date, amount, currency_code, reservation_status, room_category, rate_code, origin_of_booking = 'WEB')
    @resv_daily_el_seq += 1
    DB[:reservation_daily_element_name].insert(:resort => Resort::IMPALA_CODE,
                                               :reservation_date => reservation_date,
                                               :share_amount => amount,
                                               :resv_daily_el_seq => @resv_daily_el_seq,
                                               :currency_code => currency_code,
                                               :insert_date => reservation_date,
                                               :rate_code => rate_code)

    DB[:reservation_daily_elements].insert(:resort => Resort::IMPALA_CODE,
                                               :reservation_date => reservation_date,
                                               :resv_daily_el_seq => @resv_daily_el_seq,
                                               :room_category => room_category,
                                               :resv_status => reservation_status,
                                               :origin_of_booking => origin_of_booking)
  end

  def new_currency_exchange(begin_date, currency_exchange)
    DB[:currency_exchange_rates].insert(:currency_code => 'USD',
                                        :base_curr_code => 'ARS',
                                        :exchange_rate_type => 'POST',
                                        :begin_date => begin_date,
                                        :exchange_rate => currency_exchange)
  end

  def new_usd_foreign_currency
    DB[:foreign_currency].insert(:currency_code => 'USD')
  end

  def impala
    Resort.impala(100, [])
  end
end