class RepositoryFactory

  def daily_reservation_repository
    DailyReservationRepository
  end

  def resort_repository
    ResortRepository
  end

  def allotment_repository
    AllotmentRepository
  end

  def financial_transaction_repository
    FinancialTransactionRepository
  end
end