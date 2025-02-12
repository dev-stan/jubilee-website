# app/controllers/carts_controller.rb
class CartsController < ApplicationController
  def show
    @reservations = Reservation.where(id: session[:reservation_ids])
  end
end
