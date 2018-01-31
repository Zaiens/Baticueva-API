class CreateBills < ActiveRecord::Migration[5.1]
  def change
    create_table :bills do |t|

      t.datetime :date_bill
      t.float :total

    end
  end
end
