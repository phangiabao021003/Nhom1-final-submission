class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :productname
      t.references :product_type, null: false, foreign_key: true
      t.references :manufacturing, null: false, foreign_key: true
      t.string :cost

      t.timestamps
    end
  end
end
