class Booking < ApplicationRecord
  belongs_to :driving_offer
  belongs_to :user
  has_one_attached :photo
end
