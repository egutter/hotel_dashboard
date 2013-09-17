class PickupStatsCsvFormatter

  include ActionView::Helpers::NumberHelper

  def initialize(pickup_date_range, pickup_report)
    @pickup_date_range = pickup_date_range
    @pickup_report = pickup_report
  end

  def to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << header
      @pickup_report.each_day_pickup do |pickup|
        csv << [pickup.reservation_date.strftime('%d/%m/%Y'),
              pickup.reservations_at_begin_date.to_i,
              pickup.pickup_rooms.to_i,
              pickup.reservations_at_end_date.to_i,
              number_to_percentage(pickup.occupancy_percentage_at_end_date, precision: 2),
              number_to_currency(pickup.average_rate_at_end_date)]
      end
    end
  end

  def header
    ["Fecha",	"Reservas al #{@pickup_date_range.begin.strftime('%d/%m')}", "Pick up", "Reservas al #{@pickup_date_range.end.strftime('%d/%m')}",	"% Occ al 16/09",	"ADR"]
  end

end