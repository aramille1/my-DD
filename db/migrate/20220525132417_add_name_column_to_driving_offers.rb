class AddNameColumnToDrivingOffers < ActiveRecord::Migration[7.0]
  def change
    add_column :driving_offers, :name, :string
  end
end
