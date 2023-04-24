class CreateResponses < ActiveRecord::Migration[7.0]
  def change
    create_table :responses do |t|
      t.string :resid
      t.references :client, null: false, foreign_key: true
      t.text :response
      t.references :rating, null: false, foreign_key: true

      t.timestamps
    end
  end
end
