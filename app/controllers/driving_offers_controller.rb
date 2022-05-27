class DrivingOffersController < ApplicationController
  def index
    @driving_offers = DrivingOffer.all
    @driving_offers = policy_scope(DrivingOffer)

  end

  def show
    @driving_offer = authorize DrivingOffer.find(params[:id])
    #  @driving_offer = DrivingOffer.find(params[:id])
  end

  def new
    @driving_offer = authorize DrivingOffer.new
  end

  def create
    @driving_offer = authorize DrivingOffer.new(strong_params)
    @driving_offer.user = current_user
    # @full_name = `#{@driving_offer.user.first_name} #{@driving_offer.user.first_name}`
    @driving_offer.save
    redirect_to driving_offers_path(@driving_offer)
  end

  def destroy
    @driving_offer = DrivingOffer.find(params[:id])
    authorize @driving_offer
    @driving_offer.destroy
    redirect_to dashboard_index_path
  end

  def strong_params
    params.require(:driving_offer).permit(:name, :qualification,
                                          :experience, :event_address, :event_name, :price, :photo)
  end


end
