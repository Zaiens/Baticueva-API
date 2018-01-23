class CreateLeaseHolders < ActiveRecord::Migration[5.1]
  def change
    create_table :lease_holders do |t|

      t.string :name
      t.string :email
      t.string :password
      t.integer :age

    end
  end
end
