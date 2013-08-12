class RateCodeRepository

  class << self

    def find_by_resort_code(resort_code)
      query = dataset.select(:rate_code, :description).where(:resort => resort_code)

      Rails.logger.debug "Find rate codes query: #{query.sql}"

      query.collect {|row|
        RateCode.new(row[:rate_code], row[:description])
      }
    end

    private

    def dataset
      DB[:rate_header]
    end
  end
end