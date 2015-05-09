class Reservation < ActiveRecord::Base
  belongs_to :user
  store_accessor :position
end
