class LcbRegistriesController < ApplicationController
  before_action :set_lcb_registry, only: [:show, :edit, :update, :destroy]

  # GET /lcb_registries
  # GET /lcb_registries.json
  def index
    @lcb_registries = LcbRegistry.all
  end

  # GET /lcb_registries/1
  # GET /lcb_registries/1.json
  def show
  end

  # GET /lcb_registries/new
  def new
    @lcb_registry = LcbRegistry.new
  end

  # GET /lcb_registries/1/edit
  def edit
  end

  # POST /lcb_registries
  # POST /lcb_registries.json
  def create
    @lcb_registry = LcbRegistry.new(lcb_registry_params)

    respond_to do |format|
      if @lcb_registry.save
        format.html { redirect_to @lcb_registry, notice: 'Lcb registry was successfully created.' }
        format.json { render :show, status: :created, location: @lcb_registry }
      else
        format.html { render :new }
        format.json { render json: @lcb_registry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lcb_registries/1
  # PATCH/PUT /lcb_registries/1.json
  def update
    respond_to do |format|
      if @lcb_registry.update(lcb_registry_params)
        format.html { redirect_to @lcb_registry, notice: 'Lcb registry was successfully updated.' }
        format.json { render :show, status: :ok, location: @lcb_registry }
      else
        format.html { render :edit }
        format.json { render json: @lcb_registry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lcb_registries/1
  # DELETE /lcb_registries/1.json
  def destroy
    @lcb_registry.destroy
    respond_to do |format|
      format.html { redirect_to lcb_registries_url, notice: 'Lcb registry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lcb_registry
      @lcb_registry = LcbRegistry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lcb_registry_params
      params.require(:lcb_registry).permit(:visible, :summary, :val, :regex, :owner_id, :create_uid, :write_uid, :id)
    end
end
