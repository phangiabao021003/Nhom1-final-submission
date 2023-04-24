class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.references :store, null: false, foreign_key: true
      t.string :orderid
      t.references :client, null: false, foreign_key: true
      t.string :order_productid
      t.string :no_orderproduct
      t.references :service, null: false, foreign_key: true
      t.string :ordercost

      t.timestamps
    end
  end
end
