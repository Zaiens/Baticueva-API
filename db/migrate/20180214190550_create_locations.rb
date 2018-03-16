# frozen_string_literal: true

class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.integer :location_id, null: false
      t.string :code
      t.string :name
      t.string :level
      t.timestamps
    end

    add_index :locations, :location_id
    add_index :locations, :code
    add_index :locations, :level
  end
end
