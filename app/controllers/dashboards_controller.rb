class DashboardsController < ApplicationController
  def index
    @bookings = Booking.all
    @bookings = policy_scope(Booking)
  end

end
