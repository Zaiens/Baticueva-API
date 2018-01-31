class CreateProperties < ActiveRecord::Migration[5.1]
  def change
    create_table :properties do |t|

      t.string :address
      t.string :number
      t.integer :bathroom
      t.integer :dorms
      t.float :built
      t.float :terrain
      t.integer :apartment
      t.text :description
      t.float :price
      t.float :sale
      t.boolean :available


    end
  end
end
