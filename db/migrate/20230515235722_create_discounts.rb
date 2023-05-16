class CreateDiscounts < ActiveRecord::Migration[7.0]
  def change
    create_table :discounts do |t|
      t.string :discountid
      t.string :amount
      t.date :starttime
      t.date :endtime
      t.string :pointstandard

      t.timestamps
    end
  end
end
