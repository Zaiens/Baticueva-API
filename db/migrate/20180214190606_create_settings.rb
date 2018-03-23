# frozen_string_literal: true

class CreateSettings < ActiveRecord::Migration[5.0]
  def change
    create_table :settings do |t|
      t.string :code
      t.string :value
      t.string :type_value
      t.text :descripton
      t.timestamps
    end

    add_index :settings, :code
  end
end
