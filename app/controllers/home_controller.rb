class HomeController < ApplicationController
  def index
    @days = Date::DAYNAMES[1..5].map(&:to_sym)
    @hours = []
    now   = DateTime.now
    (6..23).each do |hour|
      @hours << DateTime.new(now.year, now.month, now.day, hour, 0, 0, 0).strftime("%H:%M")
    end
    @reservation = Reservation.first
  end
end
