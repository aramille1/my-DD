class BookingsController < ApplicationController
  before_action :set_driving_offer, only: %i[new create index]

  def index
    @bookings = policy_scope(Booking.where(user: current_user))
  end

  def new
    @booking = authorize Booking.new
  end

  def create
    @booking = authorize Booking.new(strong_params)
    @booking.user = current_user
    @booking.driving_offer = @driving_offer
    @booking.save
    redirect_to dashboard_index_path
  end

  private

  def set_driving_offer
    @driving_offer = DrivingOffer.find(params[:driving_offer_id])
  end

  def strong_params
    params.require(:booking).permit(:start_time, :end_time,
                                          :pickup_location, :pickup_time)
  end

end
