class CreateSettings < ActiveRecord::Migration[5.0]
  def change
    create_table :settings do |t|
      t.string :code
      t.string :value
      t.string :type_value
      t.text :descripton
    end
  end
end
