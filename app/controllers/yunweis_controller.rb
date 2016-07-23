class YunweisController < ApplicationController
#  before_action :set_yunwei, only: [:show, :edit, :update, :destroy]

  # GET /yunweis
  # GET /yunweis.json
  def index
    @yunweis = Yunwei.all
  end

  # GET /yunweis/1
  # GET /yunweis/1.json
  def show
    @cmd=`#{@yunwei.command}`
  end

  # GET /yunweis/new
  def new
    @yunwei = Yunwei.new
  end

  # GET /yunweis/1/edit
  def edit
  end

  # POST /yunweis
  # POST /yunweis.json
  def create
    @yunwei = Yunwei.new(yunwei_params)

    respond_to do |format|
      if @yunwei.save
        format.html { redirect_to @yunwei, notice: 'Yunwei was successfully created.' }
        format.json { render :show, status: :created, location: @yunwei }
      else
        format.html { render :new }
        format.json { render json: @yunwei.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /yunweis/1
  # PATCH/PUT /yunweis/1.json
  def update
    respond_to do |format|
      if @yunwei.update(yunwei_params)
        format.html { redirect_to @yunwei, notice: 'Yunwei was successfully updated.' }
        format.json { render :show, status: :ok, location: @yunwei }
      else
        format.html { render :edit }
        format.json { render json: @yunwei.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /yunweis/1
  # DELETE /yunweis/1.json
  def destroy
    @yunwei.destroy
    respond_to do |format|
      format.html { redirect_to yunweis_url, notice: 'Yunwei was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_yunwei
      @yunwei = Yunwei.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def yunwei_params
      params.require(:yunwei).permit(:jobs, :command)
    end
end
