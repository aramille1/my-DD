class DrivingOffersController < ApplicationController
  def index
    @driving_offers = DrivingOffer.all
  end

  def show
<<<<<<< HEAD

     @driving_offer = DrivingOffer.find(params[:id])
=======
    @driving_offer = DrivingOffer.find(params[:id])
>>>>>>> master
  end


  def new
    @driving_offer = DrivingOffer.new
  end

  def create
    @driving_offer = DrivingOffer.new(strong_params)
    @driving_offer.user = current_user
    @driving_offer.save
    redirect_to driving_offers_path
  end

  def strong_params
    params.require(:driving_offer).permit(:start_time, :end_time, :price, :qualification,
                                          :experience, :event_address, :event_name)
  end


end
