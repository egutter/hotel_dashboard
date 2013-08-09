class DailyReservationRepository

  class << self
    def find_by_resort_and_date_range(resort, date_range)
      find_reservation_daily_elements_query(date_range, resort).
        collect { |result|
          DailyReservation.new(result[:count],
                               result[:reservation_date],
                               result[:sum],
                               result[:currency_code],
                               find_conversion_rate_by(result[:reservation_date], result[:currency_code]))
      }
    end
    def with_each_find_by_resort_and_date_range(resort, date_range)
      find_reservation_daily_elements_query(date_range, resort).
        each { |result|
          yield DailyReservation.new(result[:count],
                               result[:reservation_date],
                               result[:sum],
                               result[:currency_code],
                               find_conversion_rate_by(result[:reservation_date], result[:currency_code]))
      }
    end

    def find_reservation_daily_elements_query(date_range, resort)
      reservation_daily_element_name_dataset.
        select { sum(:share_amount) }.
        select_append { count('*') }.
        select_append(:currency_code).
        select_append(:reservation_date).
        where(:resort => resort.code).
        filter { reservation_date >= date_range.begin }.
        filter { reservation_date <= date_range.end }.
        group(:reservation_date, :currency_code).
        order(:reservation_date, :currency_code)
    end

    private

    def find_conversion_rate_by(reservation_date, currency_code)
      currency_exchange_finder(currency_code).find_by_date(reservation_date)
    end

    def currency_exchange_finder(currency_code)
      CurrencyExchangeRepository.build_by_currency_code(currency_code)
    end

    def reservation_daily_element_name_dataset
      DB[:reservation_daily_element_name]
    end
  end
end