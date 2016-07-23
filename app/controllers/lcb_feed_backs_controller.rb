class LcbFeedBacksController < ApplicationController
  before_action :set_lcb_feed_back, only: [:show, :edit, :update, :destroy]

  # GET /lcb_feed_backs
  # GET /lcb_feed_backs.json
  def index
    @lcb_feed_backs = LcbFeedBack.all
  end

  # GET /lcb_feed_backs/1
  # GET /lcb_feed_backs/1.json
  def show
  end

  # GET /lcb_feed_backs/new
  def new
    @lcb_feed_back = LcbFeedBack.new
  end

  # GET /lcb_feed_backs/1/edit
  def edit
  end

  # POST /lcb_feed_backs
  # POST /lcb_feed_backs.json
  def create
    @lcb_feed_back = LcbFeedBack.new(lcb_feed_back_params)

    respond_to do |format|
      if @lcb_feed_back.save
        format.html { redirect_to @lcb_feed_back, notice: 'Lcb feed back was successfully created.' }
        format.json { render :show, status: :created, location: @lcb_feed_back }
      else
        format.html { render :new }
        format.json { render json: @lcb_feed_back.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lcb_feed_backs/1
  # PATCH/PUT /lcb_feed_backs/1.json
  def update
    respond_to do |format|
      if @lcb_feed_back.update(lcb_feed_back_params)
        format.html { redirect_to @lcb_feed_back, notice: 'Lcb feed back was successfully updated.' }
        format.json { render :show, status: :ok, location: @lcb_feed_back }
      else
        format.html { render :edit }
        format.json { render json: @lcb_feed_back.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lcb_feed_backs/1
  # DELETE /lcb_feed_backs/1.json
  def destroy
    @lcb_feed_back.destroy
    respond_to do |format|
      format.html { redirect_to lcb_feed_backs_url, notice: 'Lcb feed back was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lcb_feed_back
      @lcb_feed_back = LcbFeedBack.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lcb_feed_back_params
      params.require(:lcb_feed_back).permit(:status, :user_id, :content, :owner_id, :create_uid, :write_uid, :id)
    end
end
