class CreateProductReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :product_reviews do |t|
      t.string :name
      t.text :review
      t.references :product_listing, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
