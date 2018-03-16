# frozen_string_literal: true

class CreatePermissions < ActiveRecord::Migration[5.0]
  def change
    create_table :permissions do |t|
      t.string :code
      t.text :description
      t.timestamps
    end

    add_index :permissions, :code
  end
end
