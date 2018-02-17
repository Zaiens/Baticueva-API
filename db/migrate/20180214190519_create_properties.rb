class CreateProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :properties do |t|

      t.string :address
      t.string :address_number
      t.string :address_department
      t.string :type
      t.integer :bath
      t.integer :rooms
      t.integer :parking
      t.float :size_build
      t.float :size_terrain
      t.float :price_daily
      t.float :price_monthly
      t.float :price_sell
      t.boolean :cellar
      t.boolean :available
      t.text :description

    end
  end
end
