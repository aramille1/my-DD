class BookingsController < ApplicationController
  before_action :set_driving_offer, only: %i[new create index]

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(strong_params)
    @booking.user = current_user
    @booking.driving_offer = @driving_offer
    @booking.save
    redirect_to driving_offer_bookings_path
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
