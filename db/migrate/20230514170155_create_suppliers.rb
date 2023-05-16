class CreateSuppliers < ActiveRecord::Migration[7.0]
  def change
    create_table :suppliers do |t|
      t.string :supplierid
      t.string :suppliername
      t.string :phone

      t.timestamps
    end
  end
end
