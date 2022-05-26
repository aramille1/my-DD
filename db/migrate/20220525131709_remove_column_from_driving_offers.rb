class RemoveColumnFromDrivingOffers < ActiveRecord::Migration[7.0]
  def change
    remove_column :driving_offers, :start_time
    remove_column :driving_offers, :end_time
    remove_column :driving_offers, :event_address
    remove_column :driving_offers, :event_name
  end
end
