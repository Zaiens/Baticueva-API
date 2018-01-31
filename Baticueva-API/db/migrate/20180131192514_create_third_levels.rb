class CreateThirdLevels < ActiveRecord::Migration[5.1]
  def change
    create_table :third_levels do |t|

      t.string :name

    end
  end
end
