class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.string :payment_method
      t.integer :user_id
      t.integer :order_id

      t.timestamps
    end
  end
end
