class LcbMenusController < ApplicationController
  before_action :set_lcb_menu, only: [:show, :edit, :update, :destroy]

  # GET /lcb_menus
  # GET /lcb_menus.json
  def index
    @lcb_menus = LcbMenu.all
  end

  # GET /lcb_menus/1
  # GET /lcb_menus/1.json
  def show
  end

  # GET /lcb_menus/new
  def new
    @lcb_menu = LcbMenu.new
  end

  # GET /lcb_menus/1/edit
  def edit
  end

  # POST /lcb_menus
  # POST /lcb_menus.json
  def create
    @lcb_menu = LcbMenu.new(lcb_menu_params)

    respond_to do |format|
      if @lcb_menu.save
        format.html { redirect_to @lcb_menu, notice: 'Lcb menu was successfully created.' }
        format.json { render :show, status: :created, location: @lcb_menu }
      else
        format.html { render :new }
        format.json { render json: @lcb_menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lcb_menus/1
  # PATCH/PUT /lcb_menus/1.json
  def update
    respond_to do |format|
      if @lcb_menu.update(lcb_menu_params)
        format.html { redirect_to @lcb_menu, notice: 'Lcb menu was successfully updated.' }
        format.json { render :show, status: :ok, location: @lcb_menu }
      else
        format.html { render :edit }
        format.json { render json: @lcb_menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lcb_menus/1
  # DELETE /lcb_menus/1.json
  def destroy
    @lcb_menu.destroy
    respond_to do |format|
      format.html { redirect_to lcb_menus_url, notice: 'Lcb menu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lcb_menu
      @lcb_menu = LcbMenu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lcb_menu_params
      params.require(:lcb_menu).permit(:separator, :icon, :target, :parent_menu_id, :sort_num, :quick_btn, :menu_name, :url, :id, :owner_id, :create_uid, :write_uid)
    end
end
