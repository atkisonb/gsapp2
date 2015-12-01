require 'test_helper'

class FundStocksControllerTest < ActionController::TestCase
  setup do
    @fund_stock = fund_stocks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fund_stocks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fund_stock" do
    assert_difference('FundStock.count') do
      post :create, fund_stock: { fund_id: @fund_stock.fund_id, stock_id: @fund_stock.stock_id }
    end

    assert_redirected_to fund_stock_path(assigns(:fund_stock))
  end

  test "should show fund_stock" do
    get :show, id: @fund_stock
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fund_stock
    assert_response :success
  end

  test "should update fund_stock" do
    patch :update, id: @fund_stock, fund_stock: { fund_id: @fund_stock.fund_id, stock_id: @fund_stock.stock_id }
    assert_redirected_to fund_stock_path(assigns(:fund_stock))
  end

  test "should destroy fund_stock" do
    assert_difference('FundStock.count', -1) do
      delete :destroy, id: @fund_stock
    end

    assert_redirected_to fund_stocks_path
  end
end
