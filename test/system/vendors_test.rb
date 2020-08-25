require "application_system_test_case"

class VendorsTest < ApplicationSystemTestCase
  setup do
    @vendor = vendors(:one)
  end

  test "visiting the index" do
    visit vendors_url
    assert_selector "h1", text: "Vendors"
  end

  test "creating a Vendor" do
    visit vendors_url
    click_on "New Vendor"

    fill_in "Business address", with: @vendor.business_address
    fill_in "Business email", with: @vendor.business_email
    fill_in "Business name", with: @vendor.business_name
    fill_in "Product", with: @vendor.product_id
    click_on "Create Vendor"

    assert_text "Vendor was successfully created"
    click_on "Back"
  end

  test "updating a Vendor" do
    visit vendors_url
    click_on "Edit", match: :first

    fill_in "Business address", with: @vendor.business_address
    fill_in "Business email", with: @vendor.business_email
    fill_in "Business name", with: @vendor.business_name
    fill_in "Product", with: @vendor.product_id
    click_on "Update Vendor"

    assert_text "Vendor was successfully updated"
    click_on "Back"
  end

  test "destroying a Vendor" do
    visit vendors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vendor was successfully destroyed"
  end
end
