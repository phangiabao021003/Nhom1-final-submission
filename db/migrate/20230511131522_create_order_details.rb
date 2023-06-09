class CreateOrderDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :order_details do |t|
      t.references :order, null: false, foreign_key: true
      t.string :detailid
      t.references :product, null: false, foreign_key: true
      t.string :productquantity
      t.string :ordercost

      t.timestamps
    end
  end
end
