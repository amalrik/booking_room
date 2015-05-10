class Reservation < ActiveRecord::Base
  belongs_to :user
  store_accessor :position

  def self.book_on_last(hour, day, user)
    transaction do
      reservation = Reservation.last
      return false if reservation.position["[#{hour}, :#{day}]"]
      reservation.position[[hour, day]] = user.id
      reservation.save
    end
  end
end
