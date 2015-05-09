module ReservationsHelper
  def make_link_for_slots(slot, day, hour)
    #byebug
    link_to_unless slot.position["[#{hour.to_i}, :#{day}]"], "Reservar sala", reservations_path(reservation_id: slot.id, hour: hour, day: day.to_s), :method => :post do
      "Reservada" 
    end    
  end
    #@reservation["[#{hour.to_i}, :monday]"]
end

