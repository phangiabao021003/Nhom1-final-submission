class CreateManufacturings < ActiveRecord::Migration[7.0]
  def change
    create_table :manufacturings do |t|
      t.string :manid
      t.string :manname

      t.timestamps
    end
  end
end
