class LcbKlinesController < ApplicationController
  before_action :set_lcb_kline, only: [:show, :edit, :update, :destroy]

  # GET /lcb_klines
  # GET /lcb_klines.json
  def index
    @lcb_klines = LcbKline.all
  end

  # GET /lcb_klines/1
  # GET /lcb_klines/1.json
  def show
  end

  # GET /lcb_klines/new
  def new
    @lcb_kline = LcbKline.new
  end

  # GET /lcb_klines/1/edit
  def edit
  end

  # POST /lcb_klines
  # POST /lcb_klines.json
  def create
    @lcb_kline = LcbKline.new(lcb_kline_params)

    respond_to do |format|
      if @lcb_kline.save
        format.html { redirect_to @lcb_kline, notice: 'Lcb kline was successfully created.' }
        format.json { render :show, status: :created, location: @lcb_kline }
      else
        format.html { render :new }
        format.json { render json: @lcb_kline.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lcb_klines/1
  # PATCH/PUT /lcb_klines/1.json
  def update
    respond_to do |format|
      if @lcb_kline.update(lcb_kline_params)
        format.html { redirect_to @lcb_kline, notice: 'Lcb kline was successfully updated.' }
        format.json { render :show, status: :ok, location: @lcb_kline }
      else
        format.html { render :edit }
        format.json { render json: @lcb_kline.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lcb_klines/1
  # DELETE /lcb_klines/1.json
  def destroy
    @lcb_kline.destroy
    respond_to do |format|
      format.html { redirect_to lcb_klines_url, notice: 'Lcb kline was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lcb_kline
      @lcb_kline = LcbKline.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lcb_kline_params
      params.require(:lcb_kline).permit(:type, :open_price, :height_price, :low_price, :closed_price, :id, :owner_id, :create_uid, :write_uid)
    end
end
