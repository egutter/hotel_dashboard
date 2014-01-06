class TargetKPI::ForecastedPeriod
  def self.from(report)
    (report.date_range.end < today) ?
      TargetKPI::NullPeriod.new :
      self.new(report)
  end

  def initialize(report)
    @report = report
  end

  def average_occupancy
    resort_stats.average_occupancy
  end

  def average_daily_average_rate
    resort_stats.average_daily_average_rate
  end

  def forecasted_days_covered
    ((forecasted_date_range.end - forecasted_date_range.begin)/1.day).round
  end

  def self.today
    Time.now.yesterday.end_of_day
  end

  def forecasted_date_range
    start_date_for_forecast_range..@report.date_range.end
  end

  def start_date_for_forecast_range
    [TargetKPI::ForecastedPeriod.today, @report.date_range.begin].max
  end

  def resort_stats
    OccupancyVsRateReport.new(@report.resort,
                              forecasted_date_range,
                              @report.rate_code_list,
                              @report.origin_of_booking_list,
                              @report.repository_factory).generate_report_data
  end


end