class OperaRepository

  EXCLUDE_ROOM_CATEGORY_BELLOW = 0
  NUMBER_FORMAT = '99999999'

  class << self
    def each_with_filter(filter)
      build_query_with_filter(filter).
        each { |result|
        Rails.logger.debug "Query result: #{result.to_json}"
        yield DailyReservation.new(result[:count_reservations],
                                   result[:reservation_date],
                                   result[:sum_total_amount],
                                   get_currency_code(result),
                                   find_conversion_rate_by(result[:reservation_date], get_currency_code(result)))
      }
    end

    def get_currency_code(result)
      result[:currency_code]
    end

    def find_with_filter(filter)
      result = []
      each_with_filter(filter) { |daily_reservation| result << daily_reservation }
      result
    end

    def find_conversion_rate_by(reservation_date, currency_code)
      currency_exchange_finder(currency_code).find_by_date(reservation_date)
    end

    def currency_exchange_finder(currency_code)
      CurrencyExchangeRepository.build_by_currency_code(currency_code)
    end

  end
end