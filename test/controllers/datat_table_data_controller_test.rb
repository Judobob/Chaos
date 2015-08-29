require 'test_helper'

class DatatTableDataControllerTest < ActionController::TestCase
  setup do
    @datat_table_datum = datat_table_data(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:datat_table_data)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create datat_table_datum" do
    assert_difference('DatatTableDatum.count') do
      post :create, datat_table_datum: { name: @datat_table_datum.name }
    end

    assert_redirected_to datat_table_datum_path(assigns(:datat_table_datum))
  end

  test "should show datat_table_datum" do
    get :show, id: @datat_table_datum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @datat_table_datum
    assert_response :success
  end

  test "should update datat_table_datum" do
    patch :update, id: @datat_table_datum, datat_table_datum: { name: @datat_table_datum.name }
    assert_redirected_to datat_table_datum_path(assigns(:datat_table_datum))
  end

  test "should destroy datat_table_datum" do
    assert_difference('DatatTableDatum.count', -1) do
      delete :destroy, id: @datat_table_datum
    end

    assert_redirected_to datat_table_data_path
  end
end
