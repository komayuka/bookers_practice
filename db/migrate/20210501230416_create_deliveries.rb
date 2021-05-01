class CreateDeliveries < ActiveRecord::Migration[5.2]
  def change
    create_table :deliveries do |t|
      t.integer :user_id,    null: false #会員id
      t.string :addressee,   null: false #宛名
      t.string :postal_code, null: false #郵便番号
      t.string :address,     null: false #住所

      t.timestamps
    end
  end
end
