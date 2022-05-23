class CreateDrivingOffers < ActiveRecord::Migration[7.0]
  def change
    create_table :driving_offers do |t|
      t.date :start_time
      t.date :end_time
      t.integer :price
      t.string :qualification
      t.string :experience
      t.string :event_address
      t.string :event_name
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
