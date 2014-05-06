class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :car_model
      t.string :car_year
      t.string :car_color
      t.string :mileage
      t.decimal :price
      t.string :image
      t.integer :category_id

      t.timestamps
    end


  end
end
