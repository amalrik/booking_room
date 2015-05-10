class Reservation < ActiveRecord::Base
  belongs_to :user
  store_accessor :position

  def self.book_on_last(hour, day)
    transaction do
      reservation = Reservation.last
      return false if reservation.position["[#{hour}, :#{day}]"] == "booked"
      reservation.position[[hour, day]] = "booked"
      reservation.save
    end
  end
end
