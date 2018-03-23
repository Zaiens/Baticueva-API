class CreatePermissionsPositions < ActiveRecord::Migration[5.0]
  def change
    create_table :permissions_positions do |t|
      t.belongs_to :permission, index: true
      t.belongs_to :position, index: true
    end
  end
end
