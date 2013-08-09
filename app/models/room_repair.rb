class RoomRepair

  def initialize(repair_date_range)
    @repair_date_range = repair_date_range
  end

  def in_repair_at?(a_date)
    @repair_date_range === a_date
  end
end