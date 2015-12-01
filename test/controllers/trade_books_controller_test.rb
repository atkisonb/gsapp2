require 'test_helper'

class TradeBooksControllerTest < ActionController::TestCase
  setup do
    @trade_book = trade_books(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trade_books)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trade_book" do
    assert_difference('TradeBook.count') do
      post :create, trade_book: { price: @trade_book.price, stock_id: @trade_book.stock_id, stock_id: @trade_book.stock_id, trade_time: @trade_book.trade_time }
    end

    assert_redirected_to trade_book_path(assigns(:trade_book))
  end

  test "should show trade_book" do
    get :show, id: @trade_book
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trade_book
    assert_response :success
  end

  test "should update trade_book" do
    patch :update, id: @trade_book, trade_book: { price: @trade_book.price, stock_id: @trade_book.stock_id, stock_id: @trade_book.stock_id, trade_time: @trade_book.trade_time }
    assert_redirected_to trade_book_path(assigns(:trade_book))
  end

  test "should destroy trade_book" do
    assert_difference('TradeBook.count', -1) do
      delete :destroy, id: @trade_book
    end

    assert_redirected_to trade_books_path
  end
end
