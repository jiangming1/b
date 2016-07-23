class LcbUserPackageItemsController < ApplicationController
  before_action :set_lcb_user_package_item, only: [:show, :edit, :update, :destroy]

  # GET /lcb_user_package_items
  # GET /lcb_user_package_items.json
  def index
    @lcb_user_package_items = LcbUserPackageItem.all
  end

  # GET /lcb_user_package_items/1
  # GET /lcb_user_package_items/1.json
  def show
  end

  # GET /lcb_user_package_items/new
  def new
    @lcb_user_package_item = LcbUserPackageItem.new
  end

  # GET /lcb_user_package_items/1/edit
  def edit
  end

  # POST /lcb_user_package_items
  # POST /lcb_user_package_items.json
  def create
    @lcb_user_package_item = LcbUserPackageItem.new(lcb_user_package_item_params)

    respond_to do |format|
      if @lcb_user_package_item.save
        format.html { redirect_to @lcb_user_package_item, notice: 'Lcb user package item was successfully created.' }
        format.json { render :show, status: :created, location: @lcb_user_package_item }
      else
        format.html { render :new }
        format.json { render json: @lcb_user_package_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lcb_user_package_items/1
  # PATCH/PUT /lcb_user_package_items/1.json
  def update
    respond_to do |format|
      if @lcb_user_package_item.update(lcb_user_package_item_params)
        format.html { redirect_to @lcb_user_package_item, notice: 'Lcb user package item was successfully updated.' }
        format.json { render :show, status: :ok, location: @lcb_user_package_item }
      else
        format.html { render :edit }
        format.json { render json: @lcb_user_package_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lcb_user_package_items/1
  # DELETE /lcb_user_package_items/1.json
  def destroy
    @lcb_user_package_item.destroy
    respond_to do |format|
      format.html { redirect_to lcb_user_package_items_url, notice: 'Lcb user package item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lcb_user_package_item
      @lcb_user_package_item = LcbUserPackageItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lcb_user_package_item_params
      params.require(:lcb_user_package_item).permit(:name, :type, :content, :user_id, :summary, :begin_time, :end_time, :tips, :used, :used_time, :id, :owner_id, :create_uid, :write_uid, :amount)
    end
end
