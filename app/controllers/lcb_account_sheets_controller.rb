class LcbAccountSheetsController < ApplicationController
  before_action :set_lcb_account_sheet, only: [:show, :edit, :update, :destroy]

  # GET /lcb_account_sheets
  # GET /lcb_account_sheets.json
  def index
    @lcb_account_sheets = LcbAccountSheet.all
  end

  # GET /lcb_account_sheets/1
  # GET /lcb_account_sheets/1.json
  def show
  end

  # GET /lcb_account_sheets/new
  def new
    @lcb_account_sheet = LcbAccountSheet.new
  end

  # GET /lcb_account_sheets/1/edit
  def edit
  end

  # POST /lcb_account_sheets
  # POST /lcb_account_sheets.json
  def create
    @lcb_account_sheet = LcbAccountSheet.new(lcb_account_sheet_params)

    respond_to do |format|
      if @lcb_account_sheet.save
        format.html { redirect_to @lcb_account_sheet, notice: 'Lcb account sheet was successfully created.' }
        format.json { render :show, status: :created, location: @lcb_account_sheet }
      else
        format.html { render :new }
        format.json { render json: @lcb_account_sheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lcb_account_sheets/1
  # PATCH/PUT /lcb_account_sheets/1.json
  def update
    respond_to do |format|
      if @lcb_account_sheet.update(lcb_account_sheet_params)
        format.html { redirect_to @lcb_account_sheet, notice: 'Lcb account sheet was successfully updated.' }
        format.json { render :show, status: :ok, location: @lcb_account_sheet }
      else
        format.html { render :edit }
        format.json { render json: @lcb_account_sheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lcb_account_sheets/1
  # DELETE /lcb_account_sheets/1.json
  def destroy
    @lcb_account_sheet.destroy
    respond_to do |format|
      format.html { redirect_to lcb_account_sheets_url, notice: 'Lcb account sheet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lcb_account_sheet
      @lcb_account_sheet = LcbAccountSheet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lcb_account_sheet_params
      params.require(:lcb_account_sheet).permit(:sign, :status, :row_num, :balance, :opt_user_id, :dr, :certificate_id, :cr, :ext, :account_id, :rid, :remark, :checker_uid, :check_remark, :check_date, :id, :owner_id, :create_uid, :write_uid)
    end
end
