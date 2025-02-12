# app/controllers/carts_controller.rb
class CartsController < ApplicationController
  def show
    @reservations = Reservation.where(id: session[:reservation_ids])
  end
  def destroy
    session[:reservation_ids].delete(params[:id].to_i)
    redirect_to cart_path, notice: "Item removed from cart."
  end
  
end
