class LcbImagePositionsController < ApplicationController
  before_action :set_lcb_image_position, only: [:show, :edit, :update, :destroy]

  # GET /lcb_image_positions
  # GET /lcb_image_positions.json
  def index
    @lcb_image_positions = LcbImagePosition.all
  end

  # GET /lcb_image_positions/1
  # GET /lcb_image_positions/1.json
  def show
  end

  # GET /lcb_image_positions/new
  def new
    @lcb_image_position = LcbImagePosition.new
  end

  # GET /lcb_image_positions/1/edit
  def edit
  end

  # POST /lcb_image_positions
  # POST /lcb_image_positions.json
  def create
    @lcb_image_position = LcbImagePosition.new(lcb_image_position_params)

    respond_to do |format|
      if @lcb_image_position.save
        format.html { redirect_to @lcb_image_position, notice: 'Lcb image position was successfully created.' }
        format.json { render :show, status: :created, location: @lcb_image_position }
      else
        format.html { render :new }
        format.json { render json: @lcb_image_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lcb_image_positions/1
  # PATCH/PUT /lcb_image_positions/1.json
  def update
    respond_to do |format|
      if @lcb_image_position.update(lcb_image_position_params)
        format.html { redirect_to @lcb_image_position, notice: 'Lcb image position was successfully updated.' }
        format.json { render :show, status: :ok, location: @lcb_image_position }
      else
        format.html { render :edit }
        format.json { render json: @lcb_image_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lcb_image_positions/1
  # DELETE /lcb_image_positions/1.json
  def destroy
    @lcb_image_position.destroy
    respond_to do |format|
      format.html { redirect_to lcb_image_positions_url, notice: 'Lcb image position was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lcb_image_position
      @lcb_image_position = LcbImagePosition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lcb_image_position_params
      params.require(:lcb_image_position).permit(:position, :begin_time, :sort_num, :link_url, :end_time, :title, :image_url, :owner_id, :create_uid, :write_uid, :id)
    end
end
