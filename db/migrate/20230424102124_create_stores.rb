class CreateStores < ActiveRecord::Migration[7.0]
  def change
    create_table :stores do |t|
      t.references :store_chain, null: false, foreign_key: true
      t.string :storeid
      t.string :phone_contract
      t.string :email
      t.string :description
      t.string :page
      t.datetime :open_time
      t.datetime :close_time
      t.text :address
      t.integer :no_employee

      t.timestamps
    end
  end
end
