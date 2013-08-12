class ResortRepository

  OUT_OF_ORDER_STATUS = 'OO'

  class << self
    def find_by_code_in_date_range(code, date_range)
      result = resort_dataset.first(:resort => code)
      raise "Unknown resort code #{code}" if result.nil?

      Resort.new(code, result[:tot_rooms], room_repairs(code, date_range))
    end

    private

    def room_repairs(code, date_range)
      query = room_repairs_dataset.where(:resort => code, :room_status => OUT_OF_ORDER_STATUS).
        filter { begin_date <= date_range.end }.
        filter { end_date >= date_range.begin }

      Rails.logger.debug "Find room repairs query: #{query}"

      query.collect { |result|
        RoomRepair.new(result[:begin_date]..result[:end_date])
      }
    end

    def resort_dataset
      DB[:resort]
    end

    def room_repairs_dataset
      DB[:room_repairs]
    end
  end
end