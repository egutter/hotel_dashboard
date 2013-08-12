class CurrencyExchangeRepository

  USD_CURRENCY_CODE = 'USD'
  ARS_CURRENCY_CODE = 'ARS'
  POST_EXCHANGE_RATE_TYPE = 'POST'

  class AlwaysOneCurrencyExchangeFinder
    def find_by_date(reservation_date)
      1
    end
  end

  class ArsToUsdCurrencyExchangeFinder
    def find_by_date(reservation_date)
      result = find_by_date_query(reservation_date).first
      raise "Cannot find currency exchange rate for reservation date #{reservation_date}. SQL: #{find_by_date_query(reservation_date).sql}" if result.nil?
      result[:exchange_rate]
    end

    def find_by_date_query(reservation_date)
      query = dataset.where(:currency_code => USD_CURRENCY_CODE,
                    :base_curr_code => ARS_CURRENCY_CODE,
                    :exchange_rate_type => POST_EXCHANGE_RATE_TYPE).
        filter { begin_date <= reservation_date }.
        order(Sequel.desc(:begin_date))

      Rails.logger.debug "Find currency exchange rate view query: #{query.sql}"

      return query
    end

    def dataset
      DB[:currency_exchange_rates_view]
    end
  end

  CURRENCY_EXCHANGE_FINDER = {
    'USD' => AlwaysOneCurrencyExchangeFinder.new,
    'ARS' => ArsToUsdCurrencyExchangeFinder.new
  }

  def self.build_by_currency_code(currency_code)
    finder = CURRENCY_EXCHANGE_FINDER[currency_code.upcase]
    raise "Unknown currency code #{currency_code}" if finder.nil?
    finder
  end
end