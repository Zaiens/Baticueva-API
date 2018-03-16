# frozen_string_literal: true

class CreateResources < ActiveRecord::Migration[5.0]
  def change
    create_table :resources do |t|
      t.integer :property_id
      t.string :type
      t.string :filename
      t.string :original_filename
      t.string :title, null: true
      t.string :description, null: true
      t.timestamps
    end

    add_index :resources, :property_id
  end
end
