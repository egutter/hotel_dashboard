class OriginOfBookingRepository

  class << self

    def find_by_resort_code(resort_code)
      query = dataset.select(:source_code, :description).where(:resort => resort_code)

      Rails.logger.debug "Find origin of bookings query: #{query.sql}"

      query.collect {|row|
        OriginOfBooking.new(row[:source_code], row[:description])
      }
    end

    private

    def dataset
      DB[:resort_origins_of_booking]
    end
  end
end