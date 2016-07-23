class LcbUserRewardsController < ApplicationController
  before_action :set_lcb_user_reward, only: [:show, :edit, :update, :destroy]

  # GET /lcb_user_rewards
  # GET /lcb_user_rewards.json
  def index
    @lcb_user_rewards = LcbUserReward.all
  end

  # GET /lcb_user_rewards/1
  # GET /lcb_user_rewards/1.json
  def show
  end

  # GET /lcb_user_rewards/new
  def new
    @lcb_user_reward = LcbUserReward.new
  end

  # GET /lcb_user_rewards/1/edit
  def edit
  end

  # POST /lcb_user_rewards
  # POST /lcb_user_rewards.json
  def create
    @lcb_user_reward = LcbUserReward.new(lcb_user_reward_params)

    respond_to do |format|
      if @lcb_user_reward.save
        format.html { redirect_to @lcb_user_reward, notice: 'Lcb user reward was successfully created.' }
        format.json { render :show, status: :created, location: @lcb_user_reward }
      else
        format.html { render :new }
        format.json { render json: @lcb_user_reward.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lcb_user_rewards/1
  # PATCH/PUT /lcb_user_rewards/1.json
  def update
    respond_to do |format|
      if @lcb_user_reward.update(lcb_user_reward_params)
        format.html { redirect_to @lcb_user_reward, notice: 'Lcb user reward was successfully updated.' }
        format.json { render :show, status: :ok, location: @lcb_user_reward }
      else
        format.html { render :edit }
        format.json { render json: @lcb_user_reward.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lcb_user_rewards/1
  # DELETE /lcb_user_rewards/1.json
  def destroy
    @lcb_user_reward.destroy
    respond_to do |format|
      format.html { redirect_to lcb_user_rewards_url, notice: 'Lcb user reward was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lcb_user_reward
      @lcb_user_reward = LcbUserReward.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lcb_user_reward_params
      params.require(:lcb_user_reward).permit(:lcb_user_id, :give_out, :activity_num, :reward_num, :owner_id, :create_uid, :write_uid, :id, :reward_desc)
    end
end
