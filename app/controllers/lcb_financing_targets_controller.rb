class LcbFinancingTargetsController < ApplicationController
  before_action :set_lcb_financing_target, only: [:show, :edit, :update, :destroy]

  # GET /lcb_financing_targets
  # GET /lcb_financing_targets.json
  def index
    @lcb_financing_targets = LcbFinancingTarget.all
  end

  # GET /lcb_financing_targets/1
  # GET /lcb_financing_targets/1.json
  def show
  end

  # GET /lcb_financing_targets/new
  def new
    @lcb_financing_target = LcbFinancingTarget.new
  end

  # GET /lcb_financing_targets/1/edit
  def edit
  end

  # POST /lcb_financing_targets
  # POST /lcb_financing_targets.json
  def create
    @lcb_financing_target = LcbFinancingTarget.new(lcb_financing_target_params)

    respond_to do |format|
      if @lcb_financing_target.save
        format.html { redirect_to @lcb_financing_target, notice: 'Lcb financing target was successfully created.' }
        format.json { render :show, status: :created, location: @lcb_financing_target }
      else
        format.html { render :new }
        format.json { render json: @lcb_financing_target.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lcb_financing_targets/1
  # PATCH/PUT /lcb_financing_targets/1.json
  def update
    respond_to do |format|
      if @lcb_financing_target.update(lcb_financing_target_params)
        format.html { redirect_to @lcb_financing_target, notice: 'Lcb financing target was successfully updated.' }
        format.json { render :show, status: :ok, location: @lcb_financing_target }
      else
        format.html { render :edit }
        format.json { render json: @lcb_financing_target.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lcb_financing_targets/1
  # DELETE /lcb_financing_targets/1.json
  def destroy
    @lcb_financing_target.destroy
    respond_to do |format|
      format.html { redirect_to lcb_financing_targets_url, notice: 'Lcb financing target was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lcb_financing_target
      @lcb_financing_target = LcbFinancingTarget.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lcb_financing_target_params
      params.require(:lcb_financing_target).permit(:status, :code, :period, :annualized_rates, :collect_amount, :finish_amount, :limit_amount, :begin_date, :end_date, :name, :owner_id, :create_uid, :write_uid, :id, :description, :interest_way, :min_amount, :bid_count, :type, :profit_flag, :pics, :pics_description, :cash_mask, :draft_info, :new_investor)
    end
end
