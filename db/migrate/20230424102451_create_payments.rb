class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.string :paymentid
      t.references :store, null: false, foreign_key: true
      t.references :order, null: false, foreign_key: true
      t.references :booking, null: false, foreign_key: true
      t.references :discount, null: false, foreign_key: true
      t.string :paymentcost
      t.datetime :paymentdate

      t.timestamps
    end
  end
end
