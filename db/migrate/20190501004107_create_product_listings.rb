class CreateProductListings < ActiveRecord::Migration[5.2]
  def change
    create_table :product_listings do |t|
      t.string :product_name
      t.text :description
      t.integer :was_price
      t.integer :price
      t.date :expiry_date
      t.references :seller, foreign_key: true

      t.timestamps
    end
  end
end
