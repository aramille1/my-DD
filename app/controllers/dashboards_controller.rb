class DashboardsController < ApplicationController
  def index
    @bookings = Booking.all
    # @driving_offers = DrivingOffer.all
    @bookings = policy_scope(Booking)
    # @driving_offers = policy_scope(DrivingOffer)
  end

  # def destroy
  #   # raise
  #   @booking = authorize Booking.find(params[:id])
  #   @booking.destroy
  #   # redirect_to dashboard_index_path(@booking), status: :see_other
  # end

end
