class CreateOwners < ActiveRecord::Migration[5.1]
  def change
    create_table :owners do |t|

      t.string :name
      t.string :last_name
      t.string :email
      t.integer :age
      t.string :identifier

    end
  end
end
