class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.string :post_code
      t.string :prefecture
      t.string :address
      t.integer :shipping_cost
      t.integer :total_payment
      t.integer :payment_method
      t.integer :order_status
      t.boolean :is_canceled
      t.timestamps
    end
  end
end
