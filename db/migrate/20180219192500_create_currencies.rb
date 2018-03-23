# frozen_string_literal: true

class CreateCurrencies < ActiveRecord::Migration[5.0]
  def change
    create_table :currencies do |t|
      t.string :name
      t.string :code
      t.string :precision
      t.string :symbol
      t.timestamps
    end

    add_index :currencies, :code
  end
end
