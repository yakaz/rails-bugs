require 'test_helper'

class HostsControllerTest < ActionController::TestCase
  setup do
    @host = hosts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hosts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create host" do
    assert_difference('Host.count') do
      post :create, :host => { :name => @host.name }
    end

    assert_redirected_to host_path(assigns(:host))
  end

  test "should show host" do
    get :show, :id => @host
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @host
    assert_response :success
  end

  test "should update host" do
    put :update, :id => @host, :host => { :name => @host.name }
    assert_redirected_to host_path(assigns(:host))
  end

  test "should destroy host" do
    assert_difference('Host.count', -1) do
      delete :destroy, :id => @host
    end

    assert_redirected_to hosts_path
  end

  test "should have lookup values" do
    # XXX Find related lookup_values,
    # even if the parent puppetclass is not associated with the host,
    # but that's ok.
    assert_equal lookup_values(:one, :two).sort, @host.lookup_values.sort
  end

  test "should update lookup value" do
    updated_value = "updated value"
    # XXX This is the failing test:
    # ActiveRecord::StatementInvalid: SQLite3::SQLException: no such column: lookup_values.host_id: SELECT "lookup_values".* FROM "lookup_values"  WHERE "lookup_values"."host_id" = 980190962 AND "lookup_values"."id" IN (980190962)
    #     app/controllers/hosts_controller.rb:62:in `update'
    #     app/controllers/hosts_controller.rb:61:in `update'
    #     test/functional/hosts_controller_test.rb:56:in `test_should_update_lookup_value'
    # The ``"lookup_values"."host_id" = 980190962 AND'' part of the where clause is added by
    # vendor/ruby/1.8/gems/activerecord-3.2.7/lib/active_record/nested_attributes.rb:397
    # (https://github.com/rails/rails/blob/v3.2.7/activerecord/lib/active_record/nested_attributes.rb#L397)
    put :update, :id => @host, :host => { :lookup_values_attributes => {
      "0" => {
        "id" => lookup_values(:one).id,
        "value" => updated_value
      }
    } }
    assert_redirected_to host_path(assigns(:host))

    assert_equal lookup_values(:one).value, updated_value
  end

end
