class LcbPicsController < ApplicationController
  before_action :set_lcb_pic, only: [:show, :edit, :update, :destroy]

  # GET /lcb_pics
  # GET /lcb_pics.json
  def index
    @lcb_pics = LcbPic.all
  end

  # GET /lcb_pics/1
  # GET /lcb_pics/1.json
  def show
  end

  # GET /lcb_pics/new
  def new
    @lcb_pic = LcbPic.new
  end

  # GET /lcb_pics/1/edit
  def edit
  end

  # POST /lcb_pics
  # POST /lcb_pics.json
  def create
    @lcb_pic = LcbPic.new(lcb_pic_params)

    respond_to do |format|
      if @lcb_pic.save
        format.html { redirect_to @lcb_pic, notice: 'Lcb pic was successfully created.' }
        format.json { render :show, status: :created, location: @lcb_pic }
      else
        format.html { render :new }
        format.json { render json: @lcb_pic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lcb_pics/1
  # PATCH/PUT /lcb_pics/1.json
  def update
    respond_to do |format|
      if @lcb_pic.update(lcb_pic_params)
        format.html { redirect_to @lcb_pic, notice: 'Lcb pic was successfully updated.' }
        format.json { render :show, status: :ok, location: @lcb_pic }
      else
        format.html { render :edit }
        format.json { render json: @lcb_pic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lcb_pics/1
  # DELETE /lcb_pics/1.json
  def destroy
    @lcb_pic.destroy
    respond_to do |format|
      format.html { redirect_to lcb_pics_url, notice: 'Lcb pic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lcb_pic
      @lcb_pic = LcbPic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lcb_pic_params
      params.require(:lcb_pic).permit(:conntent_type, :name, :size, :path, :owner_id, :create_uid, :crite_uid, :id)
    end
end
