class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :user_type
      t.string :first_name
      t.string :lastname
      t.string :email
      t.string :phone
      t.string :gender
      t.integer :age
    end
  end
end
