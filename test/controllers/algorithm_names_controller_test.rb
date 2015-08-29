require 'test_helper'

class AlgorithmNamesControllerTest < ActionController::TestCase
  setup do
    @algorithm_name = algorithm_names(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:algorithm_names)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create algorithm_name" do
    assert_difference('AlgorithmName.count') do
      post :create, algorithm_name: { algorithm_name: @algorithm_name.algorithm_name }
    end

    assert_redirected_to algorithm_name_path(assigns(:algorithm_name))
  end

  test "should show algorithm_name" do
    get :show, id: @algorithm_name
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @algorithm_name
    assert_response :success
  end

  test "should update algorithm_name" do
    patch :update, id: @algorithm_name, algorithm_name: { algorithm_name: @algorithm_name.algorithm_name }
    assert_redirected_to algorithm_name_path(assigns(:algorithm_name))
  end

  test "should destroy algorithm_name" do
    assert_difference('AlgorithmName.count', -1) do
      delete :destroy, id: @algorithm_name
    end

    assert_redirected_to algorithm_names_path
  end
end
