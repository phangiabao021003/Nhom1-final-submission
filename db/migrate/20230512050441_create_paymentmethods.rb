class CreatePaymentmethods < ActiveRecord::Migration[7.0]
  def change
    create_table :paymentmethods do |t|
      t.string :paymentmed

      t.timestamps
    end
  end
end
