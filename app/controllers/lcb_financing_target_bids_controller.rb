class LcbFinancingTargetBidsController < ApplicationController
  before_action :set_lcb_financing_target_bid, only: [:show, :edit, :update, :destroy]

  # GET /lcb_financing_target_bids
  # GET /lcb_financing_target_bids.json
  def index
    @lcb_financing_target_bids = LcbFinancingTargetBid.all
  end

  # GET /lcb_financing_target_bids/1
  # GET /lcb_financing_target_bids/1.json
  def show
  end

  # GET /lcb_financing_target_bids/new
  def new
    @lcb_financing_target_bid = LcbFinancingTargetBid.new
  end

  # GET /lcb_financing_target_bids/1/edit
  def edit
  end

  # POST /lcb_financing_target_bids
  # POST /lcb_financing_target_bids.json
  def create
    @lcb_financing_target_bid = LcbFinancingTargetBid.new(lcb_financing_target_bid_params)

    respond_to do |format|
      if @lcb_financing_target_bid.save
        format.html { redirect_to @lcb_financing_target_bid, notice: 'Lcb financing target bid was successfully created.' }
        format.json { render :show, status: :created, location: @lcb_financing_target_bid }
      else
        format.html { render :new }
        format.json { render json: @lcb_financing_target_bid.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lcb_financing_target_bids/1
  # PATCH/PUT /lcb_financing_target_bids/1.json
  def update
    respond_to do |format|
      if @lcb_financing_target_bid.update(lcb_financing_target_bid_params)
        format.html { redirect_to @lcb_financing_target_bid, notice: 'Lcb financing target bid was successfully updated.' }
        format.json { render :show, status: :ok, location: @lcb_financing_target_bid }
      else
        format.html { render :edit }
        format.json { render json: @lcb_financing_target_bid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lcb_financing_target_bids/1
  # DELETE /lcb_financing_target_bids/1.json
  def destroy
    @lcb_financing_target_bid.destroy
    respond_to do |format|
      format.html { redirect_to lcb_financing_target_bids_url, notice: 'Lcb financing target bid was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lcb_financing_target_bid
      @lcb_financing_target_bid = LcbFinancingTargetBid.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lcb_financing_target_bid_params
      params.require(:lcb_financing_target_bid).permit(:certificate_id, :pay, :financing_target_id, :bid_user_id, :buy_amount, :summary, :owner_id, :create_uid, :write_uid, :id, :pay_mark, :type, :bank_card_no, :bank_name, :withdraw_profit, :withdraw_principal, :deduction_profit, :begin_profit, :annualized_rates, :pay_pid, :pay_name, :bank_no, :lock_amount, :pay_time, :pay_channel, :end_profit, :withdraw_type, :channel, :re_begin_profit, :cash_coupon_amount, :cash_coupon_id)
    end
end
