class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.string :bookingid
      t.references :client, null: false, foreign_key: true
      t.datetime :datebooking
      t.references :point, null: false, foreign_key: true
      t.references :discount, null: false, foreign_key: true
      t.string :total
      t.references :paymentmethod, null: false, foreign_key: true

      t.timestamps
    end
  end
end
