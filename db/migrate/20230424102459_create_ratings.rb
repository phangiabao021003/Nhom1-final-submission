class CreateRatings < ActiveRecord::Migration[7.0]
  def change
    create_table :ratings do |t|
      t.string :ratingid
      t.string :rating

      t.timestamps
    end
  end
end
