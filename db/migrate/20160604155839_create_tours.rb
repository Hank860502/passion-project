class CreateTours < ActiveRecord::Migration
  def change
    create_table :tours do |t|
      t.string :tour_name
      t.integer :price
      t.string :content
      t.integer :time_needed
      t.integer :comment_id
      t.integer :country_id
      t.integer :image_id
      t.timestamps null: false
    end
  end
end
