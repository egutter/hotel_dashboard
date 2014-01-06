require File.dirname(__FILE__) + '/../test_helper'
require File.dirname(__FILE__) + '/../repositories/test_repository_factory'
require 'minitest/autorun'
require 'mocha'

class TargetKPIReportTest < MiniTest::Unit::TestCase

  def setup
    @date_range = Time.strptime('01/01/2014', "%d/%m/%Y").at_beginning_of_day..Time.strptime('31/01/2014', "%d/%m/%Y").at_end_of_day

    resort_repository = Minitest::Mock.new
    resort_repository.expect :find_by_code_in_date_range, Resort.new(Resort::IMPALA_CODE, 100, []), [Resort::IMPALA_CODE, @date_range]

    mock_report_data = mock('report_data')

    mock_report_data.stubs(:average_revenue_per_available_room).returns(65.0)
    OccupancyVsRateReport.any_instance.stubs(:generate_report_data).returns(mock_report_data)

    daily_reservation_repository = Minitest::Mock.new
    test_repository_factory = TestRepositoryFactory.new(resort_repository, daily_reservation_repository)

    rate_code_list, origin_of_booking_list = '', ''
    @rev_par_target = 70.0
    @report = TargetKPI::Report.new(Resort::IMPALA_CODE, @date_range, rate_code_list, origin_of_booking_list, @rev_par_target, test_repository_factory)
  end

  def test_when_range_is_in_future_all_results_should_be_present
    # Looking into the future
    Timecop.freeze(@date_range.begin - 1) do
      assert_equal 31, @report.with_adr_target(80.0).target_values.count {|v| !v.nil? }
      assert_equal 0, @report.with_adr_target(80.0).target_values.count {|v| v.nil? }
      assert_equal 31, @report.with_occupancy_target(0.85).target_values.count {|v| !v.nil? }
      assert_equal 0, @report.with_occupancy_target(0.85).target_values.count {|v| v.nil? }
    end
  end

  def test_when_range_is_in_past_result_size_should_be_zero
    # Looking into the past
    Timecop.freeze(@date_range.end + 1) do
      assert_equal 31, @report.with_adr_target(80.0).target_values.count {|v| v.nil? }
      assert_equal 31, @report.with_occupancy_target(0.85).target_values.count {|v| v.nil? }
    end
  end

  def test_when_range_is_in_past_and_future_result_size_should_be_range_from_today_to_end
    # Looking into the past and the future
    Time.stub :now, Time.strptime('15/01/2014', "%d/%m/%Y") do
      assert_equal 31, @report.with_adr_target(80.0).target_values.size
      assert_equal 31, @report.with_occupancy_target(0.85).target_values.size
    end
  end

  def test_when_range_is_in_future_results_should_not_use_historical_values
    # Looking into the future
    Time.stub :now, Time.strptime('31/12/2013', "%d/%m/%Y") do
      assert_equal 87.5, @report.with_adr_target(80.0).target_values.first
      assert_equal 82.35, @report.with_occupancy_target(0.85).target_values.first
    end
  end

  def test_when_range_is_in_past_and_future_results_should_use_historical_rev_par
    Time.stub :now, Time.strptime('15/01/2014', "%d/%m/%Y") do
      assert_equal 92.65, @report.with_adr_target(80.0).target_values.compact.first
      assert_equal 87.2, @report.with_occupancy_target(0.85).target_values.compact.first
    end
  end

end