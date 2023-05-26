class CreatePoints < ActiveRecord::Migration[7.0]
  def change
    create_table :points do |t|
      t.text :description
      t.string :bonuspoint

      t.timestamps
    end
  end
end
