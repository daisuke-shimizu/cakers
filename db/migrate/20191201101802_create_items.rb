class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.string :image_id
      t.integer :genre_id
      t.string :introduction
      t.integer :price
      t.integer :sales_status, default: 0
      t.timestamps
    end
  end
end
