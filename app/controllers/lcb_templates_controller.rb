class LcbTemplatesController < ApplicationController
  before_action :set_lcb_template, only: [:show, :edit, :update, :destroy]

  # GET /lcb_templates
  # GET /lcb_templates.json
  def index
    @lcb_templates = LcbTemplate.all
  end

  # GET /lcb_templates/1
  # GET /lcb_templates/1.json
  def show
  end

  # GET /lcb_templates/new
  def new
    @lcb_template = LcbTemplate.new
  end

  # GET /lcb_templates/1/edit
  def edit
  end

  # POST /lcb_templates
  # POST /lcb_templates.json
  def create
    @lcb_template = LcbTemplate.new(lcb_template_params)

    respond_to do |format|
      if @lcb_template.save
        format.html { redirect_to @lcb_template, notice: 'Lcb template was successfully created.' }
        format.json { render :show, status: :created, location: @lcb_template }
      else
        format.html { render :new }
        format.json { render json: @lcb_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lcb_templates/1
  # PATCH/PUT /lcb_templates/1.json
  def update
    respond_to do |format|
      if @lcb_template.update(lcb_template_params)
        format.html { redirect_to @lcb_template, notice: 'Lcb template was successfully updated.' }
        format.json { render :show, status: :ok, location: @lcb_template }
      else
        format.html { render :edit }
        format.json { render json: @lcb_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lcb_templates/1
  # DELETE /lcb_templates/1.json
  def destroy
    @lcb_template.destroy
    respond_to do |format|
      format.html { redirect_to lcb_templates_url, notice: 'Lcb template was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lcb_template
      @lcb_template = LcbTemplate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lcb_template_params
      params.require(:lcb_template).permit(:code, :name, :type, :content, :owner_id, :create_uid, :write_uid, :id)
    end
end
