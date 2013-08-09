class Resort

  attr_reader :code, :total_rooms, :room_repairs

  IMPALA_CODE = 'IMPL'
  SHELTOWN_CODE = 'SHTW'
  EMBAJADOR_CODE = 'EMBJ'

  def initialize(code, total_rooms, room_repairs)
    @code, @total_rooms, @room_repairs = code, total_rooms, room_repairs
  end

  def total_rooms_at(a_date)
    @total_rooms - @room_repairs.count{|repair| repair.in_repair_at?(a_date)}
  end

  class << self

    def impala(total_rooms, room_repairs)
      Resort.new(IMPALA_CODE, total_rooms, room_repairs)
    end
    def sheltown(total_rooms, room_repairs)
      Resort.new(SHELTOWN_CODE, total_rooms, room_repairs)
    end
    def embajador(total_rooms, room_repairs)
      Resort.new(EMBAJADOR_CODE, total_rooms, room_repairs)
    end
  end
end