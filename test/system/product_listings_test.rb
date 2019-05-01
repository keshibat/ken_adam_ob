require "application_system_test_case"

class ProductListingsTest < ApplicationSystemTestCase
  setup do
    @product_listing = product_listings(:one)
  end

  test "visiting the index" do
    visit product_listings_url
    assert_selector "h1", text: "Product Listings"
  end

  test "creating a Product listing" do
    visit product_listings_url
    click_on "New Product Listing"

    fill_in "Description", with: @product_listing.description
    fill_in "Expiry date", with: @product_listing.expiry_date
    fill_in "Price", with: @product_listing.price
    fill_in "Product name", with: @product_listing.product_name
    fill_in "Seller", with: @product_listing.seller_id
    fill_in "Was price", with: @product_listing.was_price
    click_on "Create Product listing"

    assert_text "Product listing was successfully created"
    click_on "Back"
  end

  test "updating a Product listing" do
    visit product_listings_url
    click_on "Edit", match: :first

    fill_in "Description", with: @product_listing.description
    fill_in "Expiry date", with: @product_listing.expiry_date
    fill_in "Price", with: @product_listing.price
    fill_in "Product name", with: @product_listing.product_name
    fill_in "Seller", with: @product_listing.seller_id
    fill_in "Was price", with: @product_listing.was_price
    click_on "Update Product listing"

    assert_text "Product listing was successfully updated"
    click_on "Back"
  end

  test "destroying a Product listing" do
    visit product_listings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product listing was successfully destroyed"
  end
end
