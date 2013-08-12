class ResortStatsJsonFormatter

  def initialize(resort_stats_collection)
    @resort_stats_collection = resort_stats_collection
  end

  def to_json
    json_result = {:reservation_date => [], :occupancy => [], :rate => [], :revPar => []}
    @resort_stats_collection.each_day_stats { |resort_stats|
      json_result[:reservation_date] << resort_stats.reservation_date
      json_result[:occupancy] << resort_stats.occupancy_percentage
      json_result[:rate] << resort_stats.rate_average
      json_result[:revPar] << resort_stats.revenue_per_available_room
    }
    json_result
  end
end