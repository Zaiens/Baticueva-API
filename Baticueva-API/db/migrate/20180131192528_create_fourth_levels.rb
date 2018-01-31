class CreateFourthLevels < ActiveRecord::Migration[5.1]
  def change
    create_table :fourth_levels do |t|

      t.string :name

    end
  end
end
