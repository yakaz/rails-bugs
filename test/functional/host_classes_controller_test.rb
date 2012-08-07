require 'test_helper'

class HostClassesControllerTest < ActionController::TestCase
  setup do
    @host_class = host_classes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:host_classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create host_class" do
    assert_difference('HostClass.count') do
      post :create, :host_class => {  }
    end

    assert_redirected_to host_class_path(assigns(:host_class))
  end

  test "should show host_class" do
    get :show, :id => @host_class
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @host_class
    assert_response :success
  end

  test "should update host_class" do
    put :update, :id => @host_class, :host_class => {  }
    assert_redirected_to host_class_path(assigns(:host_class))
  end

  test "should destroy host_class" do
    assert_difference('HostClass.count', -1) do
      delete :destroy, :id => @host_class
    end

    assert_redirected_to host_classes_path
  end
end
