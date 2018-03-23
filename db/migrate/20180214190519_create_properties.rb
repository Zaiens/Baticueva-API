# frozen_string_literal: true

class CreateProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :properties do |t|
      t.integer :leaseholder_id, index: true
      t.integer :owner_id, index: true
      t.integer :broker_id, index: true
      t.integer :location_id, index: true

      t.string :address, null: false
      t.string :address_number, null: false
      t.string :address_department
      t.string :property_type, null: false, index: true
      t.integer :bath, null: false, index: true
      t.integer :rooms, null: false, index: true
      t.integer :parking, index: true
      t.decimal :size_build, index: true
      t.decimal :size_terrain, index: true
      t.decimal :price_daily, index: true
      t.decimal :price_monthly, index: true
      t.decimal :price_sell, index: true
      t.boolean :cellar, index: true
      t.boolean :available, null: false, default: false, index: true
      t.text :description
      t.timestamps
    end
  end
end
