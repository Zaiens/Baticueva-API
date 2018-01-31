class CreateBrokers < ActiveRecord::Migration[5.1]
  def change
    create_table :brokers do |t|

      t.string :name
      t.string :last_name
      t.string :email
      t.integer :age
      t.string :identifier
      t.string :role

    end
  end
end
