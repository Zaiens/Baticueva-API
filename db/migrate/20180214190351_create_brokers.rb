class CreateBrokers < ActiveRecord::Migration[5.0]
  def change
    create_table :brokers do |t|

      t.string :username
      t.string :password
      t.string :type
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.integer :age
      t.string :gender

    end
  end
end
