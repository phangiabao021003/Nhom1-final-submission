class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.references :store, null: false, foreign_key: true
      t.string :clientphone
      t.string :clientname
      t.string :clientemail
      t.string :clientstandard

      t.timestamps
    end
  end
end
