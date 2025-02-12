class ReservationsController < ApplicationController

  def new 
    @reservation = Reservation.new()
  end
  def create 
    @offer = Offer.find(params[:offer_id])
    @reservation = @offer.reservations.new(reservation_params)
    if @reservation.save
      redirect_to cart_path, notice: 'Reservation created.'
    else
      render :new
    end

    session[:reservation_ids] ||= []
    session[:reservation_ids] << @reservation.id  

  end
end


def reservation_params
  params.require(:reservation).permit(:reservation_datetime, :number_of_adults, :number_of_children)
end




