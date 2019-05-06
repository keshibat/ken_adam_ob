require 'test_helper'

class CartsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cart = carts(:one)
  end

  test "should get index" do
    get carts_url
    assert_response :success
  end

  test "should get new" do
    get new_cart_url
    assert_response :success
  end

  test "should create cart" do
    assert_difference('Cart.count') do
      post carts_url, params: { cart: { company_name: @cart.company_name, description: @cart.description, expiry_date: @cart.expiry_date, price: @cart.price, product_name: @cart.product_name, qrcode: @cart.qrcode, reference_number: @cart.reference_number, user_id: @cart.user_id, was_price: @cart.was_price } }
    end

    assert_redirected_to cart_url(Cart.last)
  end

  test "should show cart" do
    get cart_url(@cart)
    assert_response :success
  end

  test "should get edit" do
    get edit_cart_url(@cart)
    assert_response :success
  end

  test "should update cart" do
    patch cart_url(@cart), params: { cart: { company_name: @cart.company_name, description: @cart.description, expiry_date: @cart.expiry_date, price: @cart.price, product_name: @cart.product_name, qrcode: @cart.qrcode, reference_number: @cart.reference_number, user_id: @cart.user_id, was_price: @cart.was_price } }
    assert_redirected_to cart_url(@cart)
  end

  test "should destroy cart" do
    assert_difference('Cart.count', -1) do
      delete cart_url(@cart)
    end

    assert_redirected_to carts_url
  end
end
