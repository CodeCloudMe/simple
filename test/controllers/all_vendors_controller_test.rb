require 'test_helper'

class AllVendorsControllerTest < ActionController::TestCase
  setup do
    @all_vendor = all_vendors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:all_vendors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create all_vendor" do
    assert_difference('AllVendor.count') do
      post :create, all_vendor: { description: @all_vendor.description, name: @all_vendor.name }
    end

    assert_redirected_to all_vendor_path(assigns(:all_vendor))
  end

  test "should show all_vendor" do
    get :show, id: @all_vendor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @all_vendor
    assert_response :success
  end

  test "should update all_vendor" do
    patch :update, id: @all_vendor, all_vendor: { description: @all_vendor.description, name: @all_vendor.name }
    assert_redirected_to all_vendor_path(assigns(:all_vendor))
  end

  test "should destroy all_vendor" do
    assert_difference('AllVendor.count', -1) do
      delete :destroy, id: @all_vendor
    end

    assert_redirected_to all_vendors_path
  end
end
