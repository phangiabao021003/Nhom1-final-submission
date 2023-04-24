class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.string :bookingid
      t.references :client, null: false, foreign_key: true
      t.string :booking_productid
      t.string :no_product
      t.references :service, null: false, foreign_key: true
      t.text :bookingdescription
      t.string :bookingcost
      t.string :deposit
      t.datetime :datebooking

      t.timestamps
    end
  end
end
