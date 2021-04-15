class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :product_name
      t.text :product_description
      t.string :product_img_id
      t.integer :sales_price
      t.boolean :sales_status

      t.timestamps
    end
  end
end
