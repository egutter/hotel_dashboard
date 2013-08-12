class TestRepositoryFactory

  attr_reader :resort_repository, :daily_reservation_repository

  def initialize(resort_repository, daily_reservation_repository)
    @resort_repository, @daily_reservation_repository = resort_repository, daily_reservation_repository
  end

  class TestDailyReservationRepository

  end

  class TestResortRepository
    def find_by_code_in_date_range(resort_code, date_range)

    end
  end
end