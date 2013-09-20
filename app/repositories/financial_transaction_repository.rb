class FinancialTransactionRepository < OperaRepository

  EXCLUDE_TRX_CODE_BELLOW = 999
  EXCLUDE_TRX_CODE_ABOVE = 2000

  class << self


    def filter_by_resort(query, resort)
      query.where(Sequel.qualify('financial_transactions', :resort) => resort.code)
    end

    def filter_by_rate_codes(query, rate_codes)
      # FinancialTransactions do not support rate codes. When filtering by rate code exclude all rows
      query.where('1=2')
    end

    def filter_by_origin_of_bookings(query, origin_of_bookings)
      # FinancialTransactions do not support rate codes. When filtering by rate code exclude all rows
      query.where('1=2')
    end

    def filter_by_insert_date(query, insert_date)
      query.filter { Sequel.qualify('financial_transactions', :insert_date) <= insert_date }
    end

    def filter_by_reservation_date(query, date_range)
      # Financial transactions only apply to past reservations
      if date_range.end > Time.now.yesterday.at_end_of_day
        end_date = Time.now.yesterday.at_end_of_day
      else
        end_date = date_range.end
      end
      query.filter { Sequel.qualify('financial_transactions', :trx_date) >= date_range.begin }.
            filter { Sequel.qualify('financial_transactions', :trx_date) <= end_date }
    end

    def build_query_with_filter(filter)
      query = filter.apply(self, build_base_query).
        group(:trx_date).
        order(:trx_date)

      Rails.logger.debug "Find financial transactions query: #{query.sql}"

      return query
    end

    def build_base_query
      allotment_detail_dataset.
        select { count(:*).as(:count_reservations) }.
        select { sum(Sequel.qualify(:financial_transactions, :net_amount)).as(:sum_total_amount) }.
        select_append { trx_date.as('reservation_date') }.
        filter { to_number(:trx_code, OperaRepository::NUMBER_FORMAT) > EXCLUDE_TRX_CODE_BELLOW }.
        filter { to_number(:trx_code, OperaRepository::NUMBER_FORMAT) < EXCLUDE_TRX_CODE_ABOVE }
    end

    def get_currency_code(result)
      CurrencyExchangeRepository::ARS_CURRENCY_CODE
    end


    def allotment_detail_dataset
      DB[:financial_transactions]
    end
  end
end