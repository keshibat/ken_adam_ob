class CreateCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :carts do |t|
      t.string :company_name
      t.string :product_name
      t.text :description
      t.integer :was_price
      t.integer :price
      t.string :reference_number
      t.date :expiry_date
      t.text :qrcode
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
