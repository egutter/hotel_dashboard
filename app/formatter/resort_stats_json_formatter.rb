class ResortStatsJsonFormatter

  def initialize(resort_stats_collection)
    @resort_stats_collection = resort_stats_collection
  end

  def to_json
    json_result = {:reservation_date => [], :occupancy => [], :rate => [], :revPar => [], :today_index => index_at_today_for_reservation_date()}
    @resort_stats_collection.each_day_stats { |resort_stats|
      json_result[:reservation_date] << resort_stats.reservation_date.strftime('%d %b')
      json_result[:occupancy] << resort_stats.occupancy_percentage
      json_result[:rate] << resort_stats.rate_average
      json_result[:revPar] << resort_stats.revenue_per_available_room
    }
    json_result
  end

  def index_at_today_for_reservation_date
    index = @resort_stats_collection.index_at(Date.today)
    return index + 0.5 unless index.nil?
  end
end