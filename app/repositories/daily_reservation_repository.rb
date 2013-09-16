class DailyReservationRepository < OperaRepository

  RESERVED_STATUS = ['CHECKED IN', 'CHECKED OUT', 'RESERVED']

  class << self

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
        select { sum(:share_amount).as('sum_total_amount') }.
        select_append { sum(Sequel.qualify(:reservation_daily_elements, :quantity)).as('count_reservations') }.
        select_append(:currency_code).
        select_append(Sequel.qualify(:reservation_daily_element_name, :reservation_date)).
        join(:reservation_daily_elements, :resv_daily_el_seq => :resv_daily_el_seq, :resort => :resort).
        join(:reservation_name, :resv_name_id => Sequel.qualify(:reservation_daily_element_name, :resv_name_id), :resort => Sequel.qualify(:reservation_daily_element_name, :resort)).
        where(Sequel.qualify(:reservation_daily_elements, :resv_status) => RESERVED_STATUS).
        filter { to_number(Sequel.qualify(:reservation_daily_elements, :room_category), OperaRepository::NUMBER_FORMAT) > OperaRepository::EXCLUDE_ROOM_CATEGORY_BELLOW }.
        exclude(Sequel.qualify(:reservation_daily_element_name, :reservation_date) => Sequel.qualify(:reservation_name, :trunc_end_date))
    end

    def reservation_daily_element_name_dataset
      DB[:reservation_daily_element_name]
    end
  end
end