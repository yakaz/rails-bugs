require 'test_helper'

class LookupValuesControllerTest < ActionController::TestCase
  setup do
    @lookup_value = lookup_values(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lookup_values)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lookup_value" do
    assert_difference('LookupValue.count') do
      post :create, :lookup_value => { :value => @lookup_value.value, :matcher => @lookup_value.matcher }
    end

    assert_redirected_to lookup_value_path(assigns(:lookup_value))
  end

  test "should show lookup_value" do
    get :show, :id => @lookup_value
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @lookup_value
    assert_response :success
  end

  test "should update lookup_value" do
    put :update, :id => @lookup_value, :lookup_value => { :value => @lookup_value.value, :matcher => @lookup_value.matcher }
    assert_redirected_to lookup_value_path(assigns(:lookup_value))
  end

  test "should destroy lookup_value" do
    assert_difference('LookupValue.count', -1) do
      delete :destroy, :id => @lookup_value
    end

    assert_redirected_to lookup_values_path
  end
end
