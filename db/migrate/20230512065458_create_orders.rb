class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :orderid
      t.references :client, null: false, foreign_key: true
      t.datetime :orderdate
      t.references :point, null: false, foreign_key: true
      t.references :discount, null: false, foreign_key: true
      t.string :ordercost
      t.references :paymentmethod, null: false, foreign_key: true
      t.references :buyingmethod, null: false, foreign_key: true

      t.timestamps
    end
  end
end
