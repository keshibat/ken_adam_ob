require 'test_helper'

class ProductPurchasedListingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_purchased_listing = product_purchased_listings(:one)
  end

  test "should get index" do
    get product_purchased_listings_url
    assert_response :success
  end

  test "should get new" do
    get new_product_purchased_listing_url
    assert_response :success
  end

  test "should create product_purchased_listing" do
    assert_difference('ProductPurchasedListing.count') do
      post product_purchased_listings_url, params: { product_purchased_listing: { description: @product_purchased_listing.description, expiry_date: @product_purchased_listing.expiry_date, price: @product_purchased_listing.price, product_name: @product_purchased_listing.product_name, reference_number: @product_purchased_listing.reference_number, user_id: @product_purchased_listing.user_id, was_price: @product_purchased_listing.was_price } }
    end

    assert_redirected_to product_purchased_listing_url(ProductPurchasedListing.last)
  end

  test "should show product_purchased_listing" do
    get product_purchased_listing_url(@product_purchased_listing)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_purchased_listing_url(@product_purchased_listing)
    assert_response :success
  end

  test "should update product_purchased_listing" do
    patch product_purchased_listing_url(@product_purchased_listing), params: { product_purchased_listing: { description: @product_purchased_listing.description, expiry_date: @product_purchased_listing.expiry_date, price: @product_purchased_listing.price, product_name: @product_purchased_listing.product_name, reference_number: @product_purchased_listing.reference_number, user_id: @product_purchased_listing.user_id, was_price: @product_purchased_listing.was_price } }
    assert_redirected_to product_purchased_listing_url(@product_purchased_listing)
  end

  test "should destroy product_purchased_listing" do
    assert_difference('ProductPurchasedListing.count', -1) do
      delete product_purchased_listing_url(@product_purchased_listing)
    end

    assert_redirected_to product_purchased_listings_url
  end
end
