class RepositoryFactory

  def daily_reservation_repository
    DailyReservationRepository
  end

  def resort_repository
    ResortRepository
  end
end