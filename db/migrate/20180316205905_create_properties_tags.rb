class CreatePropertiesTags < ActiveRecord::Migration[5.0]
  def change
    create_table :properties_tags do |t|
      t.belongs_to :property, index: true
      t.belongs_to :tag, index: true
    end
  end
end
