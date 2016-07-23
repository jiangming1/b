class LcbCashCouponDefsController < ApplicationController
  before_action :set_lcb_cash_coupon_def, only: [:show, :edit, :update, :destroy]

  # GET /lcb_cash_coupon_defs
  # GET /lcb_cash_coupon_defs.json
  def index
    @lcb_cash_coupon_defs = LcbCashCouponDef.all
  end

  # GET /lcb_cash_coupon_defs/1
  # GET /lcb_cash_coupon_defs/1.json
  def show
  end

  # GET /lcb_cash_coupon_defs/new
  def new
    @lcb_cash_coupon_def = LcbCashCouponDef.new
  end

  # GET /lcb_cash_coupon_defs/1/edit
  def edit
  end

  # POST /lcb_cash_coupon_defs
  # POST /lcb_cash_coupon_defs.json
  def create
    @lcb_cash_coupon_def = LcbCashCouponDef.new(lcb_cash_coupon_def_params)

    respond_to do |format|
      if @lcb_cash_coupon_def.save
        format.html { redirect_to @lcb_cash_coupon_def, notice: 'Lcb cash coupon def was successfully created.' }
        format.json { render :show, status: :created, location: @lcb_cash_coupon_def }
      else
        format.html { render :new }
        format.json { render json: @lcb_cash_coupon_def.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lcb_cash_coupon_defs/1
  # PATCH/PUT /lcb_cash_coupon_defs/1.json
  def update
    respond_to do |format|
      if @lcb_cash_coupon_def.update(lcb_cash_coupon_def_params)
        format.html { redirect_to @lcb_cash_coupon_def, notice: 'Lcb cash coupon def was successfully updated.' }
        format.json { render :show, status: :ok, location: @lcb_cash_coupon_def }
      else
        format.html { render :edit }
        format.json { render json: @lcb_cash_coupon_def.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lcb_cash_coupon_defs/1
  # DELETE /lcb_cash_coupon_defs/1.json
  def destroy
    @lcb_cash_coupon_def.destroy
    respond_to do |format|
      format.html { redirect_to lcb_cash_coupon_defs_url, notice: 'Lcb cash coupon def was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lcb_cash_coupon_def
      @lcb_cash_coupon_def = LcbCashCouponDef.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lcb_cash_coupon_def_params
      params.require(:lcb_cash_coupon_def).permit(:name, :amount, :summary, :valid_day, :used_quantity, :total_quantity, :begin_time, :end_time, :conditions, :id, :owner_id, :create_uid, :write_uid)
    end
end
