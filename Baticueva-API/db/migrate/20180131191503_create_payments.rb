class CreatePayments < ActiveRecord::Migration[5.1]
  def change
    create_table :payments do |t|

      t.datetime :payment_date

    end
  end
end
