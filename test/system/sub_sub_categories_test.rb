require "application_system_test_case"

class SubSubCategoriesTest < ApplicationSystemTestCase
  setup do
    @sub_sub_category = sub_sub_categories(:one)
  end

  test "visiting the index" do
    visit sub_sub_categories_url
    assert_selector "h1", text: "Sub Sub Categories"
  end

  test "creating a Sub sub category" do
    visit sub_sub_categories_url
    click_on "New Sub Sub Category"

    fill_in "Category", with: @sub_sub_category.category_id
    fill_in "Name", with: @sub_sub_category.name
    fill_in "Product", with: @sub_sub_category.product_id
    fill_in "Sub category", with: @sub_sub_category.sub_category_id
    click_on "Create Sub sub category"

    assert_text "Sub sub category was successfully created"
    click_on "Back"
  end

  test "updating a Sub sub category" do
    visit sub_sub_categories_url
    click_on "Edit", match: :first

    fill_in "Category", with: @sub_sub_category.category_id
    fill_in "Name", with: @sub_sub_category.name
    fill_in "Product", with: @sub_sub_category.product_id
    fill_in "Sub category", with: @sub_sub_category.sub_category_id
    click_on "Update Sub sub category"

    assert_text "Sub sub category was successfully updated"
    click_on "Back"
  end

  test "destroying a Sub sub category" do
    visit sub_sub_categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sub sub category was successfully destroyed"
  end
end
