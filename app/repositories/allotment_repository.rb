class AllotmentRepository < OperaRepository

  BOOKING_STATUS = ['ACT', 'TEN', 'DEF']

  class << self


    def filter_by_resort(query, resort)
      query.where(Sequel.qualify('allotment$detail', :resort) => resort.code)
    end

    def filter_by_rate_codes(query, rate_codes)
      # Allotments do not support rate codes. When filtering by rate code exclude all rows
      query.where('1=2')
    end

    def filter_by_origin_of_bookings(query, origin_of_bookings)
      query.where(:source => origin_of_bookings)
    end

    def filter_by_insert_date(query, insert_date)
      query.filter { Sequel.qualify('allotment$detail', :insert_date) <= insert_date }
    end

    def filter_by_reservation_date(query, date_range)
      query.filter { Sequel.qualify('allotment$detail', :allotment_date) >= date_range.begin }.
            filter { Sequel.qualify('allotment$detail', :allotment_date) <= date_range.end }
    end

    def build_query_with_filter(filter)
      query = filter.apply(self, build_base_query).
        group(:allotment_date, :currency_code).
        order(:allotment_date, :currency_code)

      Rails.logger.debug "Find allotment detail query: #{query.sql}"

      return query
    end

    def build_base_query
      allotment_detail_dataset.
        select { sum(AllotmentRepository.forcasted_to_sell - AllotmentRepository.sold).as('count_reservations') }.
        select_append { sum(AllotmentRepository.projected_rate(1) + AllotmentRepository.projected_rate(2) + AllotmentRepository.projected_rate(3) + AllotmentRepository.projected_rate(4)).as('sum_total_amount') }.
        select_append(:currency_code).
        select_append { allotment_date.as('reservation_date') }.
        join('allotment$header'.to_sym, :allotment_header_id => :allotment_header_id, :resort => :resort).
        where(Sequel.qualify('allotment$header', :booking_status) => BOOKING_STATUS).
        filter { to_number(Sequel.qualify('allotment$detail', :room_category), OperaRepository::NUMBER_FORMAT) > OperaRepository::EXCLUDE_ROOM_CATEGORY_BELLOW }.
        filter { AllotmentRepository.forcasted_to_sell >= AllotmentRepository.sold }.
        filter { Sequel.negate(AllotmentRepository.projected_occ(1)=>0) | Sequel.negate(AllotmentRepository.projected_occ(2)=>0) | Sequel.negate(AllotmentRepository.projected_occ(3)=>0) | Sequel.negate(AllotmentRepository.projected_occ(4)=>0) }
    end

    def sold
      Sequel.function(SqlUtilities.if_null, Sequel.qualify('allotment$detail', :sold), 0)
    end

    def forcasted_to_sell
      Sequel.function(SqlUtilities.if_null, Sequel.qualify('allotment$detail', :forcasted_to_sell), 0)
    end

    def projected_rate(col_number)
      rate_amount(col_number) * projected_occ(col_number)
    end

    def projected_occ(col_number)
      Sequel.function(SqlUtilities.if_null, Sequel.qualify('allotment$detail', "projected_occ#{col_number}"), 0)
    end

    def rate_amount(col_number)
      Sequel.function(SqlUtilities.if_null, Sequel.qualify('allotment$detail', "rate_amount_#{col_number}"), 0)
    end

    def allotment_detail_dataset
      DB['allotment$detail'.to_sym]
    end
  end
end