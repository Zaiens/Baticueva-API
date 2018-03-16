# frozen_string_literal: true

class CreateTags < ActiveRecord::Migration[5.0]
  def change
    create_table :tags do |t|
      t.string :code
      t.string :name
      t.text :description
      t.timestamps
    end

    add_index :tags, :code
  end
end
