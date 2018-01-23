class CreateProperties < ActiveRecord::Migration[5.1]
  def change
    create_table :properties do |t|

      t.string :type
      t.text :address
      t.integer :propertie_number
      t.integer :bathroom
      t.integer :dorm
      t.integer :dept_number
      t.integer :price
      t.float :constructed
      t.float :terrain
      t.boolean :available
      t.boolean :sale

    end
  end
end
