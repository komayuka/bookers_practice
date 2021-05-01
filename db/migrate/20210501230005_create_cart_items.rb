class CreateCartItems < ActiveRecord::Migration[5.2]
  def change
    create_table :cart_items do |t|
      t.integer :amount,      null: false  #商品量
      t.integer :product_id,  null: false  #商品id
      t.integer :user_id,     null: false  #会員id

      t.timestamps
    end
  end
end
