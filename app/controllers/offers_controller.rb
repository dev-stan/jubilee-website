class OffersController < ApplicationController
  
  def index
    @offers = Offer.all
  end

  def show
    @offer = Offer.find(params[:id])
    @reservation = @offer.reservations.new
  end

  def cart
    
  end
end