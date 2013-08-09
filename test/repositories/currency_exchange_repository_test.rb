require File.dirname(__FILE__) + '/../test_helper'
require File.dirname(__FILE__) + '/sequel_test_case'
require 'minitest/autorun'

class CurrencyExchangeRepositoryTest < MiniTest::Unit::TestCase

  def setup
    DB[:foreign_currency].insert(:currency_code => 'USD')

    new_currency_exchange(Date.yesterday - 5, 0.18)
    new_currency_exchange(Date.yesterday, 0.2)
    new_currency_exchange(Date.today, 0.15)
    new_currency_exchange(Date.tomorrow, 0.25)
  end


  def test_find_by_date_with_usd_currency_should_always_be_one
    repository = CurrencyExchangeRepository.build_by_currency_code(CurrencyExchangeRepository::USD_CURRENCY_CODE)
    assert_equal 1, repository.find_by_date(Date.yesterday)
    assert_equal 1, repository.find_by_date(Date.today)
    assert_equal 1, repository.find_by_date(Date.tomorrow)
  end

  def test_find_by_date_with_ars_currency_should_return_the_last_currency_exchange
    repository = CurrencyExchangeRepository.build_by_currency_code(CurrencyExchangeRepository::ARS_CURRENCY_CODE)
    assert_equal 0.18, repository.find_by_date(Date.yesterday - 1)
    assert_equal 0.2, repository.find_by_date(Date.yesterday)
    assert_equal 0.15, repository.find_by_date(Date.today)
    assert_equal 0.25, repository.find_by_date(Date.tomorrow)
    assert_equal 0.25, repository.find_by_date(Date.tomorrow + 10)
  end

  def test_find_by_date_with_ars_currency_should_raise_error_when_nothing_found
    repository = CurrencyExchangeRepository.build_by_currency_code(CurrencyExchangeRepository::ARS_CURRENCY_CODE)
    assert_raises(RuntimeError) { repository.find_by_date(Date.yesterday - 10) }
  end

  private

  def new_currency_exchange(begin_date, currency_exchange)
    DB[:currency_exchange_rates].insert(:currency_code => 'USD',
                                        :base_curr_code => 'ARS',
                                        :exchange_rate_type => 'POST',
                                        :begin_date => begin_date,
                                        :exchange_rate => currency_exchange)
  end

end