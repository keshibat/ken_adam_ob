require "application_system_test_case"

class ProductPurchasedListingsTest < ApplicationSystemTestCase
  setup do
    @product_purchased_listing = product_purchased_listings(:one)
  end

  test "visiting the index" do
    visit product_purchased_listings_url
    assert_selector "h1", text: "Product Purchased Listings"
  end

  test "creating a Product purchased listing" do
    visit product_purchased_listings_url
    click_on "New Product Purchased Listing"

    fill_in "Description", with: @product_purchased_listing.description
    fill_in "Expiry date", with: @product_purchased_listing.expiry_date
    fill_in "Price", with: @product_purchased_listing.price
    fill_in "Product name", with: @product_purchased_listing.product_name
    fill_in "Reference number", with: @product_purchased_listing.reference_number
    fill_in "User", with: @product_purchased_listing.user_id
    fill_in "Was price", with: @product_purchased_listing.was_price
    click_on "Create Product purchased listing"

    assert_text "Product purchased listing was successfully created"
    click_on "Back"
  end

  test "updating a Product purchased listing" do
    visit product_purchased_listings_url
    click_on "Edit", match: :first

    fill_in "Description", with: @product_purchased_listing.description
    fill_in "Expiry date", with: @product_purchased_listing.expiry_date
    fill_in "Price", with: @product_purchased_listing.price
    fill_in "Product name", with: @product_purchased_listing.product_name
    fill_in "Reference number", with: @product_purchased_listing.reference_number
    fill_in "User", with: @product_purchased_listing.user_id
    fill_in "Was price", with: @product_purchased_listing.was_price
    click_on "Update Product purchased listing"

    assert_text "Product purchased listing was successfully updated"
    click_on "Back"
  end

  test "destroying a Product purchased listing" do
    visit product_purchased_listings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product purchased listing was successfully destroyed"
  end
end
