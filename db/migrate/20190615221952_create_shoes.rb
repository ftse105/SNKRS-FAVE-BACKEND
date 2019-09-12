class CreateShoes < ActiveRecord::Migration[5.2]
  def change
    create_table :shoes do |t|
      t.string :name
      t.string :description
      t.string :brand
      t.string :image_url
      t.integer :release_year
      t.integer :price

      t.timestamps
    end
  end
end
