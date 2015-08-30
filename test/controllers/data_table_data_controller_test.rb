require 'test_helper'

class DataTableDataControllerTest < ActionController::TestCase
  setup do
    @data_table_datum = data_table_data(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:data_table_data)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create data_table_datum" do
    assert_difference('DataTableDatum.count') do
      post :create, data_table_datum: { name: @data_table_datum.name }
    end

    assert_redirected_to data_table_datum_path(assigns(:data_table_datum))
  end

  test "should show data_table_datum" do
    get :show, id: @data_table_datum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @data_table_datum
    assert_response :success
  end

  test "should update data_table_datum" do
    patch :update, id: @data_table_datum, data_table_datum: { name: @data_table_datum.name }
    assert_redirected_to data_table_datum_path(assigns(:data_table_datum))
  end

  test "should destroy data_table_datum" do
    assert_difference('DataTableDatum.count', -1) do
      delete :destroy, id: @data_table_datum
    end

    assert_redirected_to data_table_data_path
  end
end
