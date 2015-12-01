class TradeBooksController < ApplicationController
  before_action :set_trade_book, only: [:show, :edit, :update, :destroy]

  # GET /trade_books
  # GET /trade_books.json
  def index
    @trade_books = TradeBook.all
  end

  # GET /trade_books/1
  # GET /trade_books/1.json
  def show
  end

  # GET /trade_books/new
  def new
    @trade_book = TradeBook.new
  end

  # GET /trade_books/1/edit
  def edit
  end

  # POST /trade_books
  # POST /trade_books.json
  def create
    @trade_book = TradeBook.new(trade_book_params)

    respond_to do |format|
      if @trade_book.save
        format.html { redirect_to @trade_book, notice: 'Trade book was successfully created.' }
        format.json { render :show, status: :created, location: @trade_book }
      else
        format.html { render :new }
        format.json { render json: @trade_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trade_books/1
  # PATCH/PUT /trade_books/1.json
  def update
    respond_to do |format|
      if @trade_book.update(trade_book_params)
        format.html { redirect_to @trade_book, notice: 'Trade book was successfully updated.' }
        format.json { render :show, status: :ok, location: @trade_book }
      else
        format.html { render :edit }
        format.json { render json: @trade_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trade_books/1
  # DELETE /trade_books/1.json
  def destroy
    @trade_book.destroy
    respond_to do |format|
      format.html { redirect_to trade_books_url, notice: 'Trade book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trade_book
      @trade_book = TradeBook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trade_book_params
      params.require(:trade_book).permit(:stock_id, :trade_time, :price, :stock_id)
    end
end
