class LcbWithdrawFinancingTargetBidItemsController < ApplicationController
  before_action :set_lcb_withdraw_financing_target_bid_item, only: [:show, :edit, :update, :destroy]

  # GET /lcb_withdraw_financing_target_bid_items
  # GET /lcb_withdraw_financing_target_bid_items.json
  def index
    @lcb_withdraw_financing_target_bid_items = LcbWithdrawFinancingTargetBidItem.all
  end

  # GET /lcb_withdraw_financing_target_bid_items/1
  # GET /lcb_withdraw_financing_target_bid_items/1.json
  def show
  end

  # GET /lcb_withdraw_financing_target_bid_items/new
  def new
    @lcb_withdraw_financing_target_bid_item = LcbWithdrawFinancingTargetBidItem.new
  end

  # GET /lcb_withdraw_financing_target_bid_items/1/edit
  def edit
  end

  # POST /lcb_withdraw_financing_target_bid_items
  # POST /lcb_withdraw_financing_target_bid_items.json
  def create
    @lcb_withdraw_financing_target_bid_item = LcbWithdrawFinancingTargetBidItem.new(lcb_withdraw_financing_target_bid_item_params)

    respond_to do |format|
      if @lcb_withdraw_financing_target_bid_item.save
        format.html { redirect_to @lcb_withdraw_financing_target_bid_item, notice: 'Lcb withdraw financing target bid item was successfully created.' }
        format.json { render :show, status: :created, location: @lcb_withdraw_financing_target_bid_item }
      else
        format.html { render :new }
        format.json { render json: @lcb_withdraw_financing_target_bid_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lcb_withdraw_financing_target_bid_items/1
  # PATCH/PUT /lcb_withdraw_financing_target_bid_items/1.json
  def update
    respond_to do |format|
      if @lcb_withdraw_financing_target_bid_item.update(lcb_withdraw_financing_target_bid_item_params)
        format.html { redirect_to @lcb_withdraw_financing_target_bid_item, notice: 'Lcb withdraw financing target bid item was successfully updated.' }
        format.json { render :show, status: :ok, location: @lcb_withdraw_financing_target_bid_item }
      else
        format.html { render :edit }
        format.json { render json: @lcb_withdraw_financing_target_bid_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lcb_withdraw_financing_target_bid_items/1
  # DELETE /lcb_withdraw_financing_target_bid_items/1.json
  def destroy
    @lcb_withdraw_financing_target_bid_item.destroy
    respond_to do |format|
      format.html { redirect_to lcb_withdraw_financing_target_bid_items_url, notice: 'Lcb withdraw financing target bid item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lcb_withdraw_financing_target_bid_item
      @lcb_withdraw_financing_target_bid_item = LcbWithdrawFinancingTargetBidItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lcb_withdraw_financing_target_bid_item_params
      params.require(:lcb_withdraw_financing_target_bid_item).permit(:status, :withdraw_profit, :withdraw_principal, :withdraw_id, :financing_target_bid_id, :id, :owner_id, :create_uid, :write_uid)
    end
end
