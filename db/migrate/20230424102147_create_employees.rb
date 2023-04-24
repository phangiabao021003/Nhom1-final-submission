class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.references :store, null: false, foreign_key: true
      t.string :empid
      t.string :empname
      t.string :empphone
      t.string :salary
      t.references :department, null: false, foreign_key: true

      t.timestamps
    end
  end
end
