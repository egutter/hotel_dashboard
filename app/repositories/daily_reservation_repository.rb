class DailyReservationRepository

  RESERVED_STATUS = ['CHECKED IN', 'CHECKED OUT', 'RESERVED']
  EXCLUDE_ROOM_CATEGORY_BELLOW = 0
  NUMBER_FORMAT = '99999999'

  class << self
    def each_with_filter(filter)
      build_query_with_filter(filter).
        each { |result|
          yield DailyReservation.new(result[:count_reservations],
                               result[:reservation_date],
                               result[:sum_shared_amount],
                               result[:currency_code],
                               find_conversion_rate_by(result[:reservation_date], result[:currency_code]))
      }
    end

    def find_with_filter(filter)
      result = []
      each_with_filter(filter) {|daily_reservation| result << daily_reservation}
      result
    end

    def filter_by_resort(query, resort)
      query.where(Sequel.qualify(:reservation_daily_element_name, :resort) => resort.code)
    end

    def filter_by_rate_codes(query, rate_codes)
      query.where(Sequel.qualify(:reservation_daily_element_name, :rate_code) => rate_codes)
    end

    def filter_by_origin_of_bookings(query, origin_of_bookings)
      query.where(Sequel.qualify(:reservation_daily_elements, :origin_of_booking) => origin_of_bookings)
    end

    def filter_by_insert_date(query, insert_date)
      query.filter { Sequel.qualify(:reservation_daily_element_name, :insert_date) <= insert_date }
    end

    def filter_by_reservation_date(query, date_range)
      query.filter { Sequel.qualify(:reservation_daily_element_name, :reservation_date) >= date_range.begin }.
            filter { Sequel.qualify(:reservation_daily_element_name, :reservation_date) <= date_range.end }
    end

    private

    def build_query_with_filter(filter)
      query = filter.apply(self, build_base_query).
        group(Sequel.qualify(:reservation_daily_element_name, :reservation_date), :currency_code).
        order(Sequel.qualify(:reservation_daily_element_name, :reservation_date), :currency_code)

      Rails.logger.debug "Find reservation daily elements query: #{query.sql}"

      return query
    end

    def build_base_query
      reservation_daily_element_name_dataset.
        select { sum(:share_amount).as('sum_shared_amount') }.
        select_append { count('*').as('count_reservations') }.
        select_append(:currency_code).
        select_append(Sequel.qualify(:reservation_daily_element_name, :reservation_date)).
        join(:reservation_daily_elements, :resv_daily_el_seq => :resv_daily_el_seq, :resort => :resort).
        join(:reservation_name, :resv_name_id => Sequel.qualify(:reservation_daily_element_name, :resv_name_id), :resort => Sequel.qualify(:reservation_daily_element_name, :resort)).
        where(Sequel.qualify(:reservation_daily_elements, :resv_status) => RESERVED_STATUS).
        filter { to_number(Sequel.qualify(:reservation_daily_elements, :room_category), NUMBER_FORMAT) > EXCLUDE_ROOM_CATEGORY_BELLOW }.
        exclude(Sequel.qualify(:reservation_daily_element_name, :reservation_date) => Sequel.qualify(:reservation_name, :trunc_end_date))
    end

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