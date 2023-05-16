class CreatePurchasings < ActiveRecord::Migration[7.0]
  def change
    create_table :purchasings do |t|
      t.references :store, null: false, foreign_key: true
      t.string :purchasingid
      t.references :product, null: false, foreign_key: true
      t.references :supplier, null: false, foreign_key: true
      t.string :unit
      t.integer :number_of_unit
      t.text :note
      t.datetime :datepurchasing
      t.string :purchasingcost

      t.timestamps
    end
  end
end
