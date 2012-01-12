class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :body
      t.date :event_date
      t.integer :attendence
      t.integer :drinks
      t.integer :twitter
      t.string :booking_url
      t.text :location_map
      t.string :location_address
      t.string :location_phone
      t.string :location_url
      t.string :location_twitter

      t.timestamps
    end
  end
end
