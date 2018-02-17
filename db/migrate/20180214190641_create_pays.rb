class CreatePays < ActiveRecord::Migration[5.0]
  def change
    create_table :pays do |t|

      t.decimal :total
      t.datetime :date

    end
  end
end
