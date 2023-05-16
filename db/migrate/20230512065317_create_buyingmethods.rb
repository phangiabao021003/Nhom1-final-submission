class CreateBuyingmethods < ActiveRecord::Migration[7.0]
  def change
    create_table :buyingmethods do |t|
      t.string :buyingmed

      t.timestamps
    end
  end
end
