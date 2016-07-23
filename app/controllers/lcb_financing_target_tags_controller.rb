class LcbFinancingTargetTagsController < ApplicationController
  before_action :set_lcb_financing_target_tag, only: [:show, :edit, :update, :destroy]

  # GET /lcb_financing_target_tags
  # GET /lcb_financing_target_tags.json
  def index
    @lcb_financing_target_tags = LcbFinancingTargetTag.all
  end

  # GET /lcb_financing_target_tags/1
  # GET /lcb_financing_target_tags/1.json
  def show
  end

  # GET /lcb_financing_target_tags/new
  def new
    @lcb_financing_target_tag = LcbFinancingTargetTag.new
  end

  # GET /lcb_financing_target_tags/1/edit
  def edit
  end

  # POST /lcb_financing_target_tags
  # POST /lcb_financing_target_tags.json
  def create
    @lcb_financing_target_tag = LcbFinancingTargetTag.new(lcb_financing_target_tag_params)

    respond_to do |format|
      if @lcb_financing_target_tag.save
        format.html { redirect_to @lcb_financing_target_tag, notice: 'Lcb financing target tag was successfully created.' }
        format.json { render :show, status: :created, location: @lcb_financing_target_tag }
      else
        format.html { render :new }
        format.json { render json: @lcb_financing_target_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lcb_financing_target_tags/1
  # PATCH/PUT /lcb_financing_target_tags/1.json
  def update
    respond_to do |format|
      if @lcb_financing_target_tag.update(lcb_financing_target_tag_params)
        format.html { redirect_to @lcb_financing_target_tag, notice: 'Lcb financing target tag was successfully updated.' }
        format.json { render :show, status: :ok, location: @lcb_financing_target_tag }
      else
        format.html { render :edit }
        format.json { render json: @lcb_financing_target_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lcb_financing_target_tags/1
  # DELETE /lcb_financing_target_tags/1.json
  def destroy
    @lcb_financing_target_tag.destroy
    respond_to do |format|
      format.html { redirect_to lcb_financing_target_tags_url, notice: 'Lcb financing target tag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lcb_financing_target_tag
      @lcb_financing_target_tag = LcbFinancingTargetTag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lcb_financing_target_tag_params
      params.require(:lcb_financing_target_tag).permit(:tag, :financing_target_id, :owner_id, :create_uid, :write_uid, :id)
    end
end
