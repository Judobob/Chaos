require 'test_helper'

class WebscrapesControllerTest < ActionController::TestCase
  setup do
    @webscrape = webscrapes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:webscrapes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create webscrape" do
    assert_difference('Webscrape.count') do
      post :create, webscrape: { name: @webscrape.name }
    end

    assert_redirected_to webscrape_path(assigns(:webscrape))
  end

  test "should show webscrape" do
    get :show, id: @webscrape
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @webscrape
    assert_response :success
  end

  test "should update webscrape" do
    patch :update, id: @webscrape, webscrape: { name: @webscrape.name }
    assert_redirected_to webscrape_path(assigns(:webscrape))
  end

  test "should destroy webscrape" do
    assert_difference('Webscrape.count', -1) do
      delete :destroy, id: @webscrape
    end

    assert_redirected_to webscrapes_path
  end
end
