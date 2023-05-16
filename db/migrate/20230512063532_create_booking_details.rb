class CreateBookingDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :booking_details do |t|
      t.references :booking, null: false, foreign_key: true
      t.string :bookingdetailid
      t.references :service, null: false, foreign_key: true
      t.datetime :time
      t.text :bookingdescription

      t.timestamps
    end
  end
end
