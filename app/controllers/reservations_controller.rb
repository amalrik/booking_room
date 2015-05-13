class ReservationsController < ApplicationController
  before_action :authenticate_user!

  def update
    #Reservation.create(position: {"[6, :monday]"=>"booked", "[7, :tuesday]"=>"booked"} )
    #byebug
    #reservation.position[[reservation_params[:hour].to_i, reservation_params[:day].to_sym]] = "booked"
    @hour = reservation_params[:hour].to_i
    @day  = reservation_params[:day]
    @ok = Reservation.book_on_last(reservation_params[:hour].to_i, reservation_params[:day].to_sym, current_user)
    @ok ? flash[:alert] = "Sala reservada com sucesso" : flash[:notice] = "Sala ja reservada"
    #redirect_to root_path
  end

  private
  def reservation_params
    params.require(:reservation).permit(:day, :hour)
  end
end
