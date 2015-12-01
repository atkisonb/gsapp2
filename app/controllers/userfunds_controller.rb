class UserfundsController < ApplicationController
  before_action :set_userfund, only: [:show, :edit, :update, :destroy]

  # GET /userfunds
  # GET /userfunds.json
  def index
    @userfunds = Userfund.all
  end

  # GET /userfunds/1
  # GET /userfunds/1.json
  def show
  end

  # GET /userfunds/new
  def new
    @userfund = Userfund.new
  end

  # GET /userfunds/1/edit
  def edit
  end

  # POST /userfunds
  # POST /userfunds.json
  def create
    @userfund = Userfund.new(userfund_params)

    respond_to do |format|
      if @userfund.save
        format.html { redirect_to @userfund, notice: 'Userfund was successfully created.' }
        format.json { render :show, status: :created, location: @userfund }
      else
        format.html { render :new }
        format.json { render json: @userfund.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /userfunds/1
  # PATCH/PUT /userfunds/1.json
  def update
    respond_to do |format|
      if @userfund.update(userfund_params)
        format.html { redirect_to @userfund, notice: 'Userfund was successfully updated.' }
        format.json { render :show, status: :ok, location: @userfund }
      else
        format.html { render :edit }
        format.json { render json: @userfund.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /userfunds/1
  # DELETE /userfunds/1.json
  def destroy
    @userfund.destroy
    respond_to do |format|
      format.html { redirect_to userfunds_url, notice: 'Userfund was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_userfund
      @userfund = Userfund.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def userfund_params
      params.require(:userfund).permit(:user_id, :fund_id)
    end
end
