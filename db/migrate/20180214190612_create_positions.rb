# frozen_string_literal: true

class CreatePositions < ActiveRecord::Migration[5.0]
  def change
    create_table :positions do |t|
      t.string :code
      t.string :name
      t.timestamps
    end

    add_index :positions, :code
  end
end
