class CreateSuppliers < ActiveRecord::Migration[7.0]
  def change
    create_table :suppliers do |t|
      t.string :supplierid
      t.string :suppliername
      t.references :product, null: false, foreign_key: true
      t.references :manufacturing, null: false, foreign_key: true
      t.string :costproduct
      t.references :producttype, null: false, foreign_key: true

      t.timestamps
    end
  end
end
