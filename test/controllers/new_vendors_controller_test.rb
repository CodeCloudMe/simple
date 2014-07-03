require 'test_helper'

class NewVendorsControllerTest < ActionController::TestCase
  setup do
    @new_vendor = new_vendors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:new_vendors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create new_vendor" do
    assert_difference('NewVendor.count') do
      post :create, new_vendor: { country: @new_vendor.country, name: @new_vendor.name }
    end

    assert_redirected_to new_vendor_path(assigns(:new_vendor))
  end

  test "should show new_vendor" do
    get :show, id: @new_vendor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @new_vendor
    assert_response :success
  end

  test "should update new_vendor" do
    patch :update, id: @new_vendor, new_vendor: { country: @new_vendor.country, name: @new_vendor.name }
    assert_redirected_to new_vendor_path(assigns(:new_vendor))
  end

  test "should destroy new_vendor" do
    assert_difference('NewVendor.count', -1) do
      delete :destroy, id: @new_vendor
    end

    assert_redirected_to new_vendors_path
  end
end
