class LcbActionsController < ApplicationController
  before_action :set_lcb_action, only: [:show, :edit, :update, :destroy]

  # GET /lcb_actions
  # GET /lcb_actions.json
  def index
    @lcb_actions = LcbAction.all
  end

  # GET /lcb_actions/1
  # GET /lcb_actions/1.json
  def show
  end

  # GET /lcb_actions/new
  def new
    @lcb_action = LcbAction.new
  end

  # GET /lcb_actions/1/edit
  def edit
  end

  # POST /lcb_actions
  # POST /lcb_actions.json
  def create
    @lcb_action = LcbAction.new(lcb_action_params)

    respond_to do |format|
      if @lcb_action.save
        format.html { redirect_to @lcb_action, notice: 'Lcb action was successfully created.' }
        format.json { render :show, status: :created, location: @lcb_action }
      else
        format.html { render :new }
        format.json { render json: @lcb_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lcb_actions/1
  # PATCH/PUT /lcb_actions/1.json
  def update
    respond_to do |format|
      if @lcb_action.update(lcb_action_params)
        format.html { redirect_to @lcb_action, notice: 'Lcb action was successfully updated.' }
        format.json { render :show, status: :ok, location: @lcb_action }
      else
        format.html { render :edit }
        format.json { render json: @lcb_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lcb_actions/1
  # DELETE /lcb_actions/1.json
  def destroy
    @lcb_action.destroy
    respond_to do |format|
      format.html { redirect_to lcb_actions_url, notice: 'Lcb action was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lcb_action
      @lcb_action = LcbAction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lcb_action_params
      params.require(:lcb_action).permit(:uri, :action_name, :id, :create_uid, :write_uid, :owner_id)
    end
end
