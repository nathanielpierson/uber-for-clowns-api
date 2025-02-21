class CreateBookings < ActiveRecord::Migration[7.2]
  def change
    create_table :bookings do |t|
      t.integer :clown_id
      t.integer :user_id
      t.integer :duration
      t.integer :rating
      t.time :arrival_time
      t.time :departure_time
      t.date :event_date

      t.timestamps
    end
  end
end
