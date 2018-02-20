class CreateTagsGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :tags_groups do |t|
      t.string :code
      t.string :name
      t.text :description
    end
  end
end
