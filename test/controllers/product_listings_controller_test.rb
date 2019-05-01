require 'test_helper'

class ProductListingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_listing = product_listings(:one)
  end

  test "should get index" do
    get product_listings_url
    assert_response :success
  end

  test "should get new" do
    get new_product_listing_url
    assert_response :success
  end

  test "should create product_listing" do
    assert_difference('ProductListing.count') do
      post product_listings_url, params: { product_listing: { description: @product_listing.description, expiry_date: @product_listing.expiry_date, price: @product_listing.price, product_name: @product_listing.product_name, seller_id: @product_listing.seller_id, was_price: @product_listing.was_price } }
    end

    assert_redirected_to product_listing_url(ProductListing.last)
  end

  test "should show product_listing" do
    get product_listing_url(@product_listing)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_listing_url(@product_listing)
    assert_response :success
  end

  test "should update product_listing" do
    patch product_listing_url(@product_listing), params: { product_listing: { description: @product_listing.description, expiry_date: @product_listing.expiry_date, price: @product_listing.price, product_name: @product_listing.product_name, seller_id: @product_listing.seller_id, was_price: @product_listing.was_price } }
    assert_redirected_to product_listing_url(@product_listing)
  end

  test "should destroy product_listing" do
    assert_difference('ProductListing.count', -1) do
      delete product_listing_url(@product_listing)
    end

    assert_redirected_to product_listings_url
  end
end
