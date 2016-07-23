class LcbWithdrawsController < ApplicationController
  before_action :set_lcb_withdraw, only: [:show, :edit, :update, :destroy]

  # GET /lcb_withdraws
  # GET /lcb_withdraws.json
  def index
    @lcb_withdraws = LcbWithdraw.all
  end

  # GET /lcb_withdraws/1
  # GET /lcb_withdraws/1.json
  def show
  end

  # GET /lcb_withdraws/new
  def new
    @lcb_withdraw = LcbWithdraw.new
  end

  # GET /lcb_withdraws/1/edit
  def edit
  end

  # POST /lcb_withdraws
  # POST /lcb_withdraws.json
  def create
    @lcb_withdraw = LcbWithdraw.new(lcb_withdraw_params)

    respond_to do |format|
      if @lcb_withdraw.save
        format.html { redirect_to @lcb_withdraw, notice: 'Lcb withdraw was successfully created.' }
        format.json { render :show, status: :created, location: @lcb_withdraw }
      else
        format.html { render :new }
        format.json { render json: @lcb_withdraw.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lcb_withdraws/1
  # PATCH/PUT /lcb_withdraws/1.json
  def update
    respond_to do |format|
      if @lcb_withdraw.update(lcb_withdraw_params)
        format.html { redirect_to @lcb_withdraw, notice: 'Lcb withdraw was successfully updated.' }
        format.json { render :show, status: :ok, location: @lcb_withdraw }
      else
        format.html { render :edit }
        format.json { render json: @lcb_withdraw.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lcb_withdraws/1
  # DELETE /lcb_withdraws/1.json
  def destroy
    @lcb_withdraw.destroy
    respond_to do |format|
      format.html { redirect_to lcb_withdraws_url, notice: 'Lcb withdraw was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lcb_withdraw
      @lcb_withdraw = LcbWithdraw.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lcb_withdraw_params
      params.require(:lcb_withdraw).permit(:name, :type, :status, :bank_card_no, :bank_name, :pid, :withdraw_profit, :user_id, :withdraw_principal, :summary, :bank_no, :opt_time, :opt_summary, :id, :owner_id, :create_uid, :write_uid, :mark, :subtract_remain_profit)
    end
end
