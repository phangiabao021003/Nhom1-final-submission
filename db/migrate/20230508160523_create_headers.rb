class CreateHeaders < ActiveRecord::Migration[7.0]
  def change
    create_table :headers do |t|
      t.string :headerid
      t.string :name
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
