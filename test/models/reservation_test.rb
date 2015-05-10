require 'test_helper'

class ReservationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "booking a new slot" do
    assert Reservation.book_on_last(11, :friday), "should return true when a new slot is booked"
  end

  test "booking a filled slot" do
    assert_not Reservation.book_on_last(6, :monday), "should return false when trying to book a filled slot"
  end
end
