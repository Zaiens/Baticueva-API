class CreateResources < ActiveRecord::Migration[5.0]
  def change
    create_table :resources do |t|

      t.string :type
      t.string :filename
      t.string :original_filename

    end
  end
end
