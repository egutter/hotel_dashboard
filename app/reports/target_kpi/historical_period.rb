class TargetKPI::HistoricalPeriod
  def self.from(report)
    (report.date_range.begin > today) ?
      TargetKPI::NullPeriod.new :
      self.new(report)
  end

  def initialize(report)
    @report = report
  end

  def average_revenue_per_available_room
    resort_stats.average_revenue_per_available_room
  end

  def historical_data_to_fill_range
    [nil] * historical_days_covered
  end

  def historical_days_covered
    ((historic_date_range.end-historic_date_range.begin)/1.day).round
  end

  def self.today
    Time.now.yesterday.end_of_day
  end

  def historic_date_range
    @report.date_range.begin..end_date_for_historic_range
  end

  def end_date_for_historic_range
    [TargetKPI::ForecastedPeriod.today, @report.date_range.end].min
  end

  def resort_stats
    OccupancyVsRateReport.new(@report.resort,
                              historic_date_range,
                              @report.rate_code_list,
                              @report.origin_of_booking_list,
                              @report.repository_factory).generate_report_data
  end
end