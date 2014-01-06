class TargetKPI::Report

  attr_reader :resort, :date_range, :rate_code_list, :origin_of_booking_list, :rev_par_target
  attr_reader :adr_target, :occupancy_target
  attr_reader :repository_factory

  def initialize(resort, date_range, rate_code_list, origin_of_booking_list, rev_par_target, repository_factory)
    @repository_factory, @resort = repository_factory, resort
    @date_range, @rate_code_list, @origin_of_booking_list, @rev_par_target = date_range, rate_code_list, origin_of_booking_list, rev_par_target
  end

  def with_adr_target(adr_target)
    @adr_target = adr_target
    OccupancyTargetCalculator.new(self)
  end

  def with_occupancy_target(occupancy_target)
    @occupancy_target = occupancy_target
    ADRTargetCalculator.new(self)
  end

  def historical_period
    TargetKPI::HistoricalPeriod.from(self)
  end

  def forecasted_period
    TargetKPI::ForecastedPeriod.from(self)
  end

  class TargetCalculator

    def initialize(report)
      @report = report
    end

    def target_values
      historical_data_to_fill_range + ([forecasted_target.round(2)] * forecasted_days_covered)
    end

    def historical_values
      historical_data_to_fill_range + ([forecasted_average] * forecasted_days_covered)
    end

    def forecasted_target
      raise "Subclass responsibility"
    end

    def forecasted_average
      raise "Subclass responsibility"
    end

    def average_values
      historical_data_to_fill_range + ()
    end

    def historical_data_to_fill_range
      @report.historical_period.historical_data_to_fill_range
    end

    def total_days_covered
      ((@report.date_range.end - @report.date_range.begin)/1.day).round
    end

    def forecasted_days_covered
      @report.forecasted_period.forecasted_days_covered
    end

    def rev_par_target
      @report.rev_par_target
    end

    def historical_rev_par
      @report.historical_period.average_revenue_per_available_room
    end

    def historical_days_covered
      @report.historical_period.historical_days_covered
    end

  end

  class OccupancyTargetCalculator < TargetCalculator
    def forecasted_target
      forecast_target = ((rev_par_target * total_days_covered) - (historical_rev_par * historical_days_covered)) / (adr_target * forecasted_days_covered)
      result = (forecast_target * 100)
      result
    end

    def forecasted_average
      @report.forecasted_period.average_occupancy
    end

    def adr_target
      @report.adr_target
    end

  end

  class ADRTargetCalculator < TargetCalculator

    def forecasted_target
      ((rev_par_target * total_days_covered) - (historical_rev_par * historical_days_covered)) / (occupancy_target * forecasted_days_covered)
    end

    def forecasted_average
      @report.forecasted_period.average_daily_average_rate
    end

    def occupancy_target
      @report.occupancy_target
    end
  end
end