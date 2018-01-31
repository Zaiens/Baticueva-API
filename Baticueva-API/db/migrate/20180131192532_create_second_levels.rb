class CreateSecondLevels < ActiveRecord::Migration[5.1]
  def change
    create_table :second_levels do |t|

      t.string :name

    end
  end
end
