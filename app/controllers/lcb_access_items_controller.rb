class LcbAccessItemsController < ApplicationController
  before_action :set_lcb_access_item, only: [:show, :edit, :update, :destroy]

  # GET /lcb_access_items
  # GET /lcb_access_items.json
  def index
    @lcb_access_items = LcbAccessItem.all
  end

  # GET /lcb_access_items/1
  # GET /lcb_access_items/1.json
  def show
  end

  # GET /lcb_access_items/new
  def new
    @lcb_access_item = LcbAccessItem.new
  end

  # GET /lcb_access_items/1/edit
  def edit
  end

  # POST /lcb_access_items
  # POST /lcb_access_items.json
  def create
    @lcb_access_item = LcbAccessItem.new(lcb_access_item_params)

    respond_to do |format|
      if @lcb_access_item.save
        format.html { redirect_to @lcb_access_item, notice: 'Lcb access item was successfully created.' }
        format.json { render :show, status: :created, location: @lcb_access_item }
      else
        format.html { render :new }
        format.json { render json: @lcb_access_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lcb_access_items/1
  # PATCH/PUT /lcb_access_items/1.json
  def update
    respond_to do |format|
      if @lcb_access_item.update(lcb_access_item_params)
        format.html { redirect_to @lcb_access_item, notice: 'Lcb access item was successfully updated.' }
        format.json { render :show, status: :ok, location: @lcb_access_item }
      else
        format.html { render :edit }
        format.json { render json: @lcb_access_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lcb_access_items/1
  # DELETE /lcb_access_items/1.json
  def destroy
    @lcb_access_item.destroy
    respond_to do |format|
      format.html { redirect_to lcb_access_items_url, notice: 'Lcb access item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lcb_access_item
      @lcb_access_item = LcbAccessItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lcb_access_item_params
      params.require(:lcb_access_item).permit(:item_type, :action_id, :role_id, :menu_id, :id, :create_uid, :write_uid, :owner_id)
    end
end
