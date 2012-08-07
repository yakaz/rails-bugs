require 'test_helper'

class PuppetclassesControllerTest < ActionController::TestCase
  setup do
    @puppetclass = puppetclasses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:puppetclasses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create puppetclass" do
    assert_difference('Puppetclass.count') do
      post :create, :puppetclass => { :name => @puppetclass.name }
    end

    assert_redirected_to puppetclass_path(assigns(:puppetclass))
  end

  test "should show puppetclass" do
    get :show, :id => @puppetclass
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @puppetclass
    assert_response :success
  end

  test "should update puppetclass" do
    put :update, :id => @puppetclass, :puppetclass => { :name => @puppetclass.name }
    assert_redirected_to puppetclass_path(assigns(:puppetclass))
  end

  test "should destroy puppetclass" do
    assert_difference('Puppetclass.count', -1) do
      delete :destroy, :id => @puppetclass
    end

    assert_redirected_to puppetclasses_path
  end
end
