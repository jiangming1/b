class LcbUserBanksController < ApplicationController
  before_action :set_lcb_user_bank, only: [:show, :edit, :update, :destroy]

  # GET /lcb_user_banks
  # GET /lcb_user_banks.json
  def index
    @lcb_user_banks = LcbUserBank.all
  end

  # GET /lcb_user_banks/1
  # GET /lcb_user_banks/1.json
  def show
  end

  # GET /lcb_user_banks/new
  def new
    @lcb_user_bank = LcbUserBank.new
  end

  # GET /lcb_user_banks/1/edit
  def edit
  end

  # POST /lcb_user_banks
  # POST /lcb_user_banks.json
  def create
    @lcb_user_bank = LcbUserBank.new(lcb_user_bank_params)

    respond_to do |format|
      if @lcb_user_bank.save
        format.html { redirect_to @lcb_user_bank, notice: 'Lcb user bank was successfully created.' }
        format.json { render :show, status: :created, location: @lcb_user_bank }
      else
        format.html { render :new }
        format.json { render json: @lcb_user_bank.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lcb_user_banks/1
  # PATCH/PUT /lcb_user_banks/1.json
  def update
    respond_to do |format|
      if @lcb_user_bank.update(lcb_user_bank_params)
        format.html { redirect_to @lcb_user_bank, notice: 'Lcb user bank was successfully updated.' }
        format.json { render :show, status: :ok, location: @lcb_user_bank }
      else
        format.html { render :edit }
        format.json { render json: @lcb_user_bank.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lcb_user_banks/1
  # DELETE /lcb_user_banks/1.json
  def destroy
    @lcb_user_bank.destroy
    respond_to do |format|
      format.html { redirect_to lcb_user_banks_url, notice: 'Lcb user bank was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lcb_user_bank
      @lcb_user_bank = LcbUserBank.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lcb_user_bank_params
      params.require(:lcb_user_bank).permit(:bank_card_no, :bank_code, :bank_name, :holder, :pid, :mobile, :lcb_user_id, :id, :owner_id, :create_uid, :write_uid)
    end
end
