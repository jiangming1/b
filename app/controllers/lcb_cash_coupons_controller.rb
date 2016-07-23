class LcbCashCouponsController < ApplicationController
  before_action :set_lcb_cash_coupon, only: [:show, :edit, :update, :destroy]

  # GET /lcb_cash_coupons
  # GET /lcb_cash_coupons.json
  def index
    @lcb_cash_coupons = LcbCashCoupon.all
  end

  # GET /lcb_cash_coupons/1
  # GET /lcb_cash_coupons/1.json
  def show
  end

  # GET /lcb_cash_coupons/new
  def new
    @lcb_cash_coupon = LcbCashCoupon.new
  end

  # GET /lcb_cash_coupons/1/edit
  def edit
  end

  # POST /lcb_cash_coupons
  # POST /lcb_cash_coupons.json
  def create
    @lcb_cash_coupon = LcbCashCoupon.new(lcb_cash_coupon_params)

    respond_to do |format|
      if @lcb_cash_coupon.save
        format.html { redirect_to @lcb_cash_coupon, notice: 'Lcb cash coupon was successfully created.' }
        format.json { render :show, status: :created, location: @lcb_cash_coupon }
      else
        format.html { render :new }
        format.json { render json: @lcb_cash_coupon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lcb_cash_coupons/1
  # PATCH/PUT /lcb_cash_coupons/1.json
  def update
    respond_to do |format|
      if @lcb_cash_coupon.update(lcb_cash_coupon_params)
        format.html { redirect_to @lcb_cash_coupon, notice: 'Lcb cash coupon was successfully updated.' }
        format.json { render :show, status: :ok, location: @lcb_cash_coupon }
      else
        format.html { render :edit }
        format.json { render json: @lcb_cash_coupon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lcb_cash_coupons/1
  # DELETE /lcb_cash_coupons/1.json
  def destroy
    @lcb_cash_coupon.destroy
    respond_to do |format|
      format.html { redirect_to lcb_cash_coupons_url, notice: 'Lcb cash coupon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lcb_cash_coupon
      @lcb_cash_coupon = LcbCashCoupon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lcb_cash_coupon_params
      params.require(:lcb_cash_coupon).permit(:name, :user_id, :amount, :summary, :begin_time, :end_time, :conditions, :used_amount, :financing_target_bid_id, :def_id, :id, :owner_id, :create_uid, :write_uid)
    end
end
