class CreateSellers < ActiveRecord::Migration[5.2]
  def change
    create_table :sellers do |t|
      t.string :company_name
      t.text :description
      t.references :location, foreign_key: true
      t.string :address
      t.string :website_url
      t.string :google_reviews_url
      t.references :cuisine, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
