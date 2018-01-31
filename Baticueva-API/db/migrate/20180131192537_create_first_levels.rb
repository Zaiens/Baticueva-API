class CreateFirstLevels < ActiveRecord::Migration[5.1]
  def change
    create_table :first_levels do |t|

      t.string :name

    end
  end
end
