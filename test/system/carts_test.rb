require "application_system_test_case"

class CartsTest < ApplicationSystemTestCase
  setup do
    @cart = carts(:one)
  end

  test "visiting the index" do
    visit carts_url
    assert_selector "h1", text: "Carts"
  end

  test "creating a Cart" do
    visit carts_url
    click_on "New Cart"

    fill_in "Company name", with: @cart.company_name
    fill_in "Description", with: @cart.description
    fill_in "Expiry date", with: @cart.expiry_date
    fill_in "Price", with: @cart.price
    fill_in "Product name", with: @cart.product_name
    fill_in "Qrcode", with: @cart.qrcode
    fill_in "Reference number", with: @cart.reference_number
    fill_in "User", with: @cart.user_id
    fill_in "Was price", with: @cart.was_price
    click_on "Create Cart"

    assert_text "Cart was successfully created"
    click_on "Back"
  end

  test "updating a Cart" do
    visit carts_url
    click_on "Edit", match: :first

    fill_in "Company name", with: @cart.company_name
    fill_in "Description", with: @cart.description
    fill_in "Expiry date", with: @cart.expiry_date
    fill_in "Price", with: @cart.price
    fill_in "Product name", with: @cart.product_name
    fill_in "Qrcode", with: @cart.qrcode
    fill_in "Reference number", with: @cart.reference_number
    fill_in "User", with: @cart.user_id
    fill_in "Was price", with: @cart.was_price
    click_on "Update Cart"

    assert_text "Cart was successfully updated"
    click_on "Back"
  end

  test "destroying a Cart" do
    visit carts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cart was successfully destroyed"
  end
end
