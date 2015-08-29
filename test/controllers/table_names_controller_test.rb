require 'test_helper'

class TableNamesControllerTest < ActionController::TestCase
  setup do
    @table_name = table_names(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:table_names)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create table_name" do
    assert_difference('TableName.count') do
      post :create, table_name: { table_name: @table_name.table_name }
    end

    assert_redirected_to table_name_path(assigns(:table_name))
  end

  test "should show table_name" do
    get :show, id: @table_name
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @table_name
    assert_response :success
  end

  test "should update table_name" do
    patch :update, id: @table_name, table_name: { table_name: @table_name.table_name }
    assert_redirected_to table_name_path(assigns(:table_name))
  end

  test "should destroy table_name" do
    assert_difference('TableName.count', -1) do
      delete :destroy, id: @table_name
    end

    assert_redirected_to table_names_path
  end
end
