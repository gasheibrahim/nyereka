require 'test_helper'

class SubSubCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sub_sub_category = sub_sub_categories(:one)
  end

  test "should get index" do
    get sub_sub_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_sub_sub_category_url
    assert_response :success
  end

  test "should create sub_sub_category" do
    assert_difference('SubSubCategory.count') do
      post sub_sub_categories_url, params: { sub_sub_category: { category_id: @sub_sub_category.category_id, name: @sub_sub_category.name, product_id: @sub_sub_category.product_id, sub_category_id: @sub_sub_category.sub_category_id } }
    end

    assert_redirected_to sub_sub_category_url(SubSubCategory.last)
  end

  test "should show sub_sub_category" do
    get sub_sub_category_url(@sub_sub_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_sub_sub_category_url(@sub_sub_category)
    assert_response :success
  end

  test "should update sub_sub_category" do
    patch sub_sub_category_url(@sub_sub_category), params: { sub_sub_category: { category_id: @sub_sub_category.category_id, name: @sub_sub_category.name, product_id: @sub_sub_category.product_id, sub_category_id: @sub_sub_category.sub_category_id } }
    assert_redirected_to sub_sub_category_url(@sub_sub_category)
  end

  test "should destroy sub_sub_category" do
    assert_difference('SubSubCategory.count', -1) do
      delete sub_sub_category_url(@sub_sub_category)
    end

    assert_redirected_to sub_sub_categories_url
  end
end
