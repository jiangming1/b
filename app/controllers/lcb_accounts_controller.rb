class LcbAccountsController < ApplicationController
  before_action :set_lcb_account, only: [:show, :edit, :update, :destroy]

  # GET /lcb_accounts
  # GET /lcb_accounts.json
  def index
    @lcb_accounts = LcbAccount.all
  end

  # GET /lcb_accounts/1
  # GET /lcb_accounts/1.json
  def show
  end

  # GET /lcb_accounts/new
  def new
    @lcb_account = LcbAccount.new
  end

  # GET /lcb_accounts/1/edit
  def edit
  end

  # POST /lcb_accounts
  # POST /lcb_accounts.json
  def create
    @lcb_account = LcbAccount.new(lcb_account_params)

    respond_to do |format|
      if @lcb_account.save
        format.html { redirect_to @lcb_account, notice: 'Lcb account was successfully created.' }
        format.json { render :show, status: :created, location: @lcb_account }
      else
        format.html { render :new }
        format.json { render json: @lcb_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lcb_accounts/1
  # PATCH/PUT /lcb_accounts/1.json
  def update
    respond_to do |format|
      if @lcb_account.update(lcb_account_params)
        format.html { redirect_to @lcb_account, notice: 'Lcb account was successfully updated.' }
        format.json { render :show, status: :ok, location: @lcb_account }
      else
        format.html { render :edit }
        format.json { render json: @lcb_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lcb_accounts/1
  # DELETE /lcb_accounts/1.json
  def destroy
    @lcb_account.destroy
    respond_to do |format|
      format.html { redirect_to lcb_accounts_url, notice: 'Lcb account was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lcb_account
      @lcb_account = LcbAccount.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lcb_account_params
      params.require(:lcb_account).permit(:sign, :row_num, :balance, :opt_user_id, :dr, :certificate_id, :cr_decimal, :ext, :subject_code, :subject_name, :subject_type, :balance_sheet_id, :remark, :user_id, :account_type, :account_no, :id, :owner_id, :create_uid, :write_uid)
    end
end
