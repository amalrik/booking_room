module ReservationsHelper
  def make_link_for_slots(slot, day, hour)
    link_to_unless  slot.position["[#{hour.to_i}, :#{day}]"], 
                    "Reservar sala", 
                    reservation_path(slot, reservation: { hour: hour, day: day.to_s}), :method => :put do
                      "Reservada" 
                    end    
  end
end

