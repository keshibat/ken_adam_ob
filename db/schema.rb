# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_05_03_042500) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "cuisines", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string "country"
    t.string "state"
    t.string "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payments", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "product_purchased_listing_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_purchased_listing_id"], name: "index_payments_on_product_purchased_listing_id"
    t.index ["user_id"], name: "index_payments_on_user_id"
  end

  create_table "product_listings", force: :cascade do |t|
    t.string "product_name"
    t.text "description"
    t.integer "was_price"
    t.integer "price"
    t.date "expiry_date"
    t.bigint "seller_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["seller_id"], name: "index_product_listings_on_seller_id"
  end

  create_table "product_purchased_listings", force: :cascade do |t|
    t.string "product_name"
    t.text "description"
    t.integer "was_price"
    t.integer "price"
    t.string "reference_number"
    t.date "expiry_date"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_product_purchased_listings_on_user_id"
  end

  create_table "product_reviews", force: :cascade do |t|
    t.string "review"
    t.bigint "product_listing_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_listing_id"], name: "index_product_reviews_on_product_listing_id"
    t.index ["user_id"], name: "index_product_reviews_on_user_id"
  end

  create_table "sellers", force: :cascade do |t|
    t.string "company_name"
    t.text "description"
    t.bigint "location_id"
    t.string "address"
    t.string "website_url"
    t.string "google_reviews_url"
    t.bigint "cuisine_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cuisine_id"], name: "index_sellers_on_cuisine_id"
    t.index ["location_id"], name: "index_sellers_on_location_id"
    t.index ["user_id"], name: "index_sellers_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "payments", "product_purchased_listings"
  add_foreign_key "payments", "users"
  add_foreign_key "product_listings", "sellers"
  add_foreign_key "product_purchased_listings", "users"
  add_foreign_key "product_reviews", "product_listings"
  add_foreign_key "product_reviews", "users"
  add_foreign_key "sellers", "cuisines"
  add_foreign_key "sellers", "locations"
  add_foreign_key "sellers", "users"
end
