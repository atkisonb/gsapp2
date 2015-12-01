class FundStocksController < ApplicationController
  before_action :set_fund_stock, only: [:show, :edit, :update, :destroy]

  # GET /fund_stocks
  # GET /fund_stocks.json
  def index
    @fund_stocks = FundStock.all
  end

  # GET /fund_stocks/1
  # GET /fund_stocks/1.json
  def show
  end

  # GET /fund_stocks/new
  def new
    @fund_stock = FundStock.new
  end

  # GET /fund_stocks/1/edit
  def edit
  end

  # POST /fund_stocks
  # POST /fund_stocks.json
  def create
    @fund_stock = FundStock.new(fund_stock_params)

    respond_to do |format|
      if @fund_stock.save
        format.html { redirect_to @fund_stock, notice: 'Fund stock was successfully created.' }
        format.json { render :show, status: :created, location: @fund_stock }
      else
        format.html { render :new }
        format.json { render json: @fund_stock.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fund_stocks/1
  # PATCH/PUT /fund_stocks/1.json
  def update
    respond_to do |format|
      if @fund_stock.update(fund_stock_params)
        format.html { redirect_to @fund_stock, notice: 'Fund stock was successfully updated.' }
        format.json { render :show, status: :ok, location: @fund_stock }
      else
        format.html { render :edit }
        format.json { render json: @fund_stock.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fund_stocks/1
  # DELETE /fund_stocks/1.json
  def destroy
    @fund_stock.destroy
    respond_to do |format|
      format.html { redirect_to fund_stocks_url, notice: 'Fund stock was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fund_stock
      @fund_stock = FundStock.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fund_stock_params
      params.require(:fund_stock).permit(:fund_id, :stock_id)
    end
end
