class LcbFinancingTargetPositionsController < ApplicationController
  before_action :set_lcb_financing_target_position, only: [:show, :edit, :update, :destroy]

  # GET /lcb_financing_target_positions
  # GET /lcb_financing_target_positions.json
  def index
    @lcb_financing_target_positions = LcbFinancingTargetPosition.all
  end

  # GET /lcb_financing_target_positions/1
  # GET /lcb_financing_target_positions/1.json
  def show
  end

  # GET /lcb_financing_target_positions/new
  def new
    @lcb_financing_target_position = LcbFinancingTargetPosition.new
  end

  # GET /lcb_financing_target_positions/1/edit
  def edit
  end

  # POST /lcb_financing_target_positions
  # POST /lcb_financing_target_positions.json
  def create
    @lcb_financing_target_position = LcbFinancingTargetPosition.new(lcb_financing_target_position_params)

    respond_to do |format|
      if @lcb_financing_target_position.save
        format.html { redirect_to @lcb_financing_target_position, notice: 'Lcb financing target position was successfully created.' }
        format.json { render :show, status: :created, location: @lcb_financing_target_position }
      else
        format.html { render :new }
        format.json { render json: @lcb_financing_target_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lcb_financing_target_positions/1
  # PATCH/PUT /lcb_financing_target_positions/1.json
  def update
    respond_to do |format|
      if @lcb_financing_target_position.update(lcb_financing_target_position_params)
        format.html { redirect_to @lcb_financing_target_position, notice: 'Lcb financing target position was successfully updated.' }
        format.json { render :show, status: :ok, location: @lcb_financing_target_position }
      else
        format.html { render :edit }
        format.json { render json: @lcb_financing_target_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lcb_financing_target_positions/1
  # DELETE /lcb_financing_target_positions/1.json
  def destroy
    @lcb_financing_target_position.destroy
    respond_to do |format|
      format.html { redirect_to lcb_financing_target_positions_url, notice: 'Lcb financing target position was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lcb_financing_target_position
      @lcb_financing_target_position = LcbFinancingTargetPosition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lcb_financing_target_position_params
      params.require(:lcb_financing_target_position).permit(:position, :financing_target_id, :sort_num, :end_time, :start_time, :id, :owner_id, :create_uid, :write_uid)
    end
end
