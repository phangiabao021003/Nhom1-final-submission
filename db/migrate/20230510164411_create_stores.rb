class CreateStores < ActiveRecord::Migration[7.0]
  def change
    create_table :stores do |t|
      t.references :store_chain, null: false, foreign_key: true
      t.string :storeid
      t.string :phone_contact
      t.text :description
      t.text :page
      t.string :open_time
      t.string :close_time
      t.text :address
      t.integer :no_employee

      t.timestamps
    end
  end
end
