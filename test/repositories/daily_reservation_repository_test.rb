require File.dirname(__FILE__) + '/../test_helper'
require File.dirname(__FILE__) + '/sequel_test_case'
require 'minitest/autorun'

class DailyReservationRepositoryTest < MiniTest::Unit::TestCase

  def setup
    @resv_daily_el_seq = 0
    new_daily_reservation(Date.yesterday, 100.0, 'USD', 'RESERVED')
    new_daily_reservation(Date.yesterday, 150.0, 'USD', 'CHECKED IN')
    new_daily_reservation(Date.yesterday, 450.0, 'ARS', 'NO SHOW')
    new_daily_reservation(Date.yesterday, 450.0, 'ARS', 'CANCELLED')
    new_daily_reservation(Date.today, 50.0, 'USD', 'RESERVED')
    new_daily_reservation(Date.today, 300.0, 'ARS', 'CHECKED IN')
    new_daily_reservation(Date.today, 150.0, 'USD', 'RESERVED')
    new_daily_reservation(Date.today, 450.0, 'ARS', 'CANCELLED')
    new_daily_reservation(Date.today, 450.0, 'ARS', 'CHECKED OUT')

    new_usd_foreign_currency()
    new_currency_exchange(Date.yesterday, 0.2)
    new_currency_exchange(Date.today, 0.15)
  end

  def test_find_by_resort_and_date_range_should_return_one_row_per_day_and_currency

    daily_reservations = DailyReservationRepository.find_by_resort_and_date_range(impala, Date.yesterday..Date.tomorrow)

    assert_equal 4, daily_reservations.size, "Should retrieve one result per reserved day and currency code"
  end

  def test_find_by_resort_and_date_range_should_sum_reserved_rooms
    daily_reservations = DailyReservationRepository.find_by_resort_and_date_range(impala, Date.yesterday..Date.tomorrow)

    assert_equal 1, daily_reservations[0].reserved_rooms, "Should count the number of reserved rooms per day"
    assert_equal 2, daily_reservations[1].reserved_rooms, "Should count the number of reserved rooms per day"
    assert_equal 2, daily_reservations[2].reserved_rooms, "Should count the number of reserved rooms per day"
    assert_equal 2, daily_reservations[3].reserved_rooms, "Should count the number of reserved rooms per day"
  end

  def test_find_by_resort_and_date_range_should_sum_rate
    daily_reservations = DailyReservationRepository.find_by_resort_and_date_range(impala, Date.yesterday..Date.tomorrow)

    assert_equal 450.0, daily_reservations[0].rate_sum, "Should average the rate of reserved rooms per day"
    assert_equal 250.0, daily_reservations[1].rate_sum, "Should average the rate of reserved rooms per day"
    assert_equal 750.0, daily_reservations[2].rate_sum, "Should average the rate of reserved rooms per day"
    assert_equal 200.0, daily_reservations[3].rate_sum, "Should average the rate of reserved rooms per day"
  end

  def test_find_by_resort_and_date_range_should_find_currency_exchange
    daily_reservations = DailyReservationRepository.find_by_resort_and_date_range(impala, Date.yesterday..Date.tomorrow)

    assert_equal 90.0, daily_reservations[0].rate_sum_in_usd, "Should average the rate in usd of reserved rooms per day"
    assert_equal 250.0, daily_reservations[1].rate_sum_in_usd, "Should average the rate in usd of reserved rooms per day"
    assert_equal 112.5, daily_reservations[2].rate_sum_in_usd, "Should average the rate in usd of reserved rooms per day"
    assert_equal 200.0, daily_reservations[3].rate_sum_in_usd, "Should average the rate in usd of reserved rooms per day"
  end

  private

  def   new_daily_reservation(reservation_date, amount, currency_code, reservation_status)
    @resv_daily_el_seq += 1
    DB[:reservation_daily_element_name].insert(:resort => Resort::IMPALA_CODE,
                                               :reservation_date => reservation_date,
                                               :share_amount => amount,
                                               :resv_daily_el_seq => @resv_daily_el_seq,
                                               :currency_code => currency_code)
    DB[:reservation_daily_elements].insert(:resort => Resort::IMPALA_CODE,
                                               :reservation_date => reservation_date,
                                               :resv_daily_el_seq => @resv_daily_el_seq,
                                               :resv_status => reservation_status)
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