class LcbManagerUsersController < ApplicationController
  before_action :set_lcb_manager_user, only: [:show, :edit, :update, :destroy]

  # GET /lcb_manager_users
  # GET /lcb_manager_users.json
  def index
    @lcb_manager_users = LcbManagerUser.all
  end

  # GET /lcb_manager_users/1
  # GET /lcb_manager_users/1.json
  def show
  end

  # GET /lcb_manager_users/new
  def new
    @lcb_manager_user = LcbManagerUser.new
  end

  # GET /lcb_manager_users/1/edit
  def edit
  end

  # POST /lcb_manager_users
  # POST /lcb_manager_users.json
  def create
    @lcb_manager_user = LcbManagerUser.new(lcb_manager_user_params)

    respond_to do |format|
      if @lcb_manager_user.save
        format.html { redirect_to @lcb_manager_user, notice: 'Lcb manager user was successfully created.' }
        format.json { render :show, status: :created, location: @lcb_manager_user }
      else
        format.html { render :new }
        format.json { render json: @lcb_manager_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lcb_manager_users/1
  # PATCH/PUT /lcb_manager_users/1.json
  def update
    respond_to do |format|
      if @lcb_manager_user.update(lcb_manager_user_params)
        format.html { redirect_to @lcb_manager_user, notice: 'Lcb manager user was successfully updated.' }
        format.json { render :show, status: :ok, location: @lcb_manager_user }
      else
        format.html { render :edit }
        format.json { render json: @lcb_manager_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lcb_manager_users/1
  # DELETE /lcb_manager_users/1.json
  def destroy
    @lcb_manager_user.destroy
    respond_to do |format|
      format.html { redirect_to lcb_manager_users_url, notice: 'Lcb manager user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lcb_manager_user
      @lcb_manager_user = LcbManagerUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lcb_manager_user_params
      params.require(:lcb_manager_user).permit(:status, :login_name, :login_pwd, :mobile, :id, :owner_id, :create_uid, :write_uid)
    end
end
