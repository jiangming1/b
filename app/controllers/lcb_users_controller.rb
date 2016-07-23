class LcbUsersController < ApplicationController
  before_action :set_lcb_user, only: [:show, :edit, :update, :destroy]
  # GET /lcb_users
  # GET /lcb_users.json
  def index
    @lcb_users = LcbUser.all
  end

  # GET /lcb_users/1
  # GET /lcb_users/1.json
  def show
  end

  # GET /lcb_users/new
  def new
    @lcb_user = LcbUser.new
  end

  # GET /lcb_users/1/edit
  def edit
  end
  def cui_cun_bao
  end
  def login
   @lcb_user = LcbUser.new
  end
  def login1
 @lcb_user = LcbUser.find_by(login_name: params[:mobile],login_pwd:params[:loginpwd1])
       if @lcb_user
          session[:id] = @lcb_user.id
      # format.html { redirect_to controller:"lcb_users",action:"index", notice: 'login session.' }
       else
       
       respond_to do |format|
         format.html{ redirect_to controller:'lcb_users',action:"login", notice:'mima cuowu'}
       end
       end
  end
  def logout
  end
  def financial_zone
  end
  def financial_detail
  end

  # POST /lcb_users
  # POST /lcb_users.json
  def create
    @lcb_user = LcbUser.new(lcb_user_params)

    respond_to do |format|
      if @lcb_user.save
        format.html { redirect_to @lcb_user, notice: 'Lcb user was successfully created.' }
        format.json { render :show, status: :created, location: @lcb_user }
      else
        format.html { render :new }
        format.json { render json: @lcb_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lcb_users/1
  # PATCH/PUT /lcb_users/1.json
  def update
    respond_to do |format|
      if @lcb_user.update(lcb_user_params)
        format.html { redirect_to @lcb_user, notice: 'Lcb user was successfully updated.' }
        format.json { render :show, status: :ok, location: @lcb_user }
      else
        format.html { render :edit }
        format.json { render json: @lcb_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lcb_users/1
  # DELETE /lcb_users/1.json
  def destroy
    @lcb_user.destroy
    respond_to do |format|
      format.html { redirect_to lcb_users_url, notice: 'Lcb user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lcb_user
      @lcb_user = LcbUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lcb_user_params
      params.require(:lcb_user).permit(:login_pwd, :login_name, :mobile, :true_name, :id, :owner_id, :create_uid, :write_uid, :pay_pwd, :pid, :invite_qr_code, :invite_code, :invite_from, :channel, :stutus, :remain_profit)
    end
end
