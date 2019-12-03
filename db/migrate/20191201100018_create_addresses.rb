class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.integer :customer_id
      t.string :last_name
      t.string :first_name
      t.string :last_name_read
      t.string :first_name_read
      t.string :post_code
      t.string :prefecture
      t.string :address
      t.timestamps
    end
  end
end
