class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :customer_id
      t.integer :item_id
      t.float :rate
      t.string :title
      t.text :content
      t.timestamps
    end
  end
end
