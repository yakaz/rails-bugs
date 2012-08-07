require 'test_helper'

class LookupKeysControllerTest < ActionController::TestCase
  setup do
    @lookup_key = lookup_keys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lookup_keys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lookup_key" do
    assert_difference('LookupKey.count') do
      post :create, :lookup_key => { :default_value => @lookup_key.default_value, :key => @lookup_key.key }
    end

    assert_redirected_to lookup_key_path(assigns(:lookup_key))
  end

  test "should show lookup_key" do
    get :show, :id => @lookup_key
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @lookup_key
    assert_response :success
  end

  test "should update lookup_key" do
    put :update, :id => @lookup_key, :lookup_key => { :default_value => @lookup_key.default_value, :key => @lookup_key.key }
    assert_redirected_to lookup_key_path(assigns(:lookup_key))
  end

  test "should destroy lookup_key" do
    assert_difference('LookupKey.count', -1) do
      delete :destroy, :id => @lookup_key
    end

    assert_redirected_to lookup_keys_path
  end
end
