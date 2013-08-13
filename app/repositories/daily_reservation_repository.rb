class DailyReservationRepository

  RESERVED_STATUS = ['CHECKED IN', 'CHECKED OUT', 'NO SHOW', 'RESERVED']
  EXCLUDE_ROOM_CATEGORY_BELLOW = 0
  NUMBER_FORMAT = '99999999'

  class << self
    def find_by_resort_and_date_range(resort, date_range)
      find_reservation_daily_elements_query(date_range, resort).
        collect { |result|
          DailyReservation.new(result[:count_reservations],
                               result[:reservation_date],
                               result[:sum_shared_amount],
                               result[:currency_code],
                               find_conversion_rate_by(result[:reservation_date], result[:currency_code]))
      }
    end
    def with_each_find_by_resort_and_date_range(resort, date_range)
      find_reservation_daily_elements_query(date_range, resort).
        each { |result|
          yield DailyReservation.new(result[:count_reservations],
                               result[:reservation_date],
                               result[:sum_shared_amount],
                               result[:currency_code],
                               find_conversion_rate_by(result[:reservation_date], result[:currency_code]))
      }
    end

    def with_each_find_by_resort_date_range_and_insert_date(resort, date_range, insert_date)
      find_reservation_daily_elements_before_insert_date_query(date_range, resort, insert_date).
        each { |result|
          yield DailyReservation.new(result[:count_reservations],
                               result[:reservation_date],
                               result[:sum_shared_amount],
                               result[:currency_code],
                               find_conversion_rate_by(result[:reservation_date], result[:currency_code]))
      }
    end

    def find_reservation_daily_elements_query(date_range, resort)
      query =  base_reservation_daily_elements_query(date_range, resort).
        group(Sequel.qualify(:reservation_daily_element_name, :reservation_date), :currency_code).
        order(Sequel.qualify(:reservation_daily_element_name, :reservation_date), :currency_code)

      Rails.logger.debug "Find reservation daily elements query: #{query.sql}"

      return query
    end

    def find_reservation_daily_elements_before_insert_date_query(date_range, resort, insert_date)
      query =  base_reservation_daily_elements_query(date_range, resort).
        filter { Sequel.qualify(:reservation_daily_element_name, :insert_date) <= insert_date }.
        group(Sequel.qualify(:reservation_daily_element_name, :reservation_date), :currency_code).
        order(Sequel.qualify(:reservation_daily_element_name, :reservation_date), :currency_code)

      Rails.logger.debug "Find reservation daily elements before insert date query: #{query.sql}"

      return query
    end

    def base_reservation_daily_elements_query(date_range, resort)
      reservation_daily_element_name_dataset.
        select { sum(:share_amount).as('sum_shared_amount') }.
        select_append { count('*').as('count_reservations') }.
        select_append(:currency_code).
        select_append(Sequel.qualify(:reservation_daily_element_name, :reservation_date)).
        join_table(:inner, :reservation_daily_elements, :resv_daily_el_seq => :resv_daily_el_seq).
        where(Sequel.qualify(:reservation_daily_element_name, :resort) => resort.code).
        where(Sequel.qualify(:reservation_daily_elements, :resv_status) => RESERVED_STATUS).
        filter { Sequel.qualify(:reservation_daily_element_name, :reservation_date) >= date_range.begin }.
        filter { Sequel.qualify(:reservation_daily_element_name, :reservation_date) <= date_range.end }.
        filter { to_number(Sequel.qualify(:reservation_daily_elements, :room_category), NUMBER_FORMAT) > EXCLUDE_ROOM_CATEGORY_BELLOW }
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