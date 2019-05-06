class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.references :user, foreign_key: true
      t.references :product_purchased_listing, foreign_key: true

      t.timestamps
    end
  end
end
