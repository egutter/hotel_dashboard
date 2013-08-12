require File.dirname(__FILE__) + '/../test_helper'
require File.dirname(__FILE__) + '/../repositories/test_repository_factory'
require 'minitest/autorun'

class OccupancyVsRateReportTest < MiniTest::Unit::TestCase

  def setup
    date_range = Date.yesterday..Date.tomorrow

    resort_repository = Minitest::Mock.new
    resort_repository.expect :find_by_code_in_date_range, Resort.new(Resort::IMPALA_CODE, 100, []), [Resort::IMPALA_CODE, date_range]

    daily_reservation_repository = Minitest::Mock.new
    # daily_reservation_repository.expect :with_each_find_by_resort_and_date_range
    test_repository_factory = TestRepositoryFactory.new(resort_repository, daily_reservation_repository)

    @report = OccupancyVsRateReport.new(Resort::IMPALA_CODE, date_range, test_repository_factory)
  end

  def test_generate_report_data

    #@report.generate_report_data
  end

end