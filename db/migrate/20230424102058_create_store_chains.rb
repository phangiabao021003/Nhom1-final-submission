class CreateStoreChains < ActiveRecord::Migration[7.0]
  def change
    create_table :store_chains do |t|
      t.string :chain_number
      t.string :website
      t.references :header, null: false, foreign_key: true

      t.timestamps
    end
  end
  
end
