class ApidocsController < ApplicationController
  before_action :set_apidoc, only: [:show, :edit, :update, :destroy]

  # GET /apidocs
  # GET /apidocs.json
  def index
    @apidocs = Apidoc.all
  end

  # GET /apidocs/1
  # GET /apidocs/1.json
  def show
  end

  # GET /apidocs/new
  def new
    @apidoc = Apidoc.new
  end

  # GET /apidocs/1/edit
  def edit
  end

  # POST /apidocs
  # POST /apidocs.json
  def create
    @apidoc = Apidoc.new(apidoc_params)

    respond_to do |format|
      if @apidoc.save
        format.html { redirect_to @apidoc, notice: 'Apidoc was successfully created.' }
        format.json { render :show, status: :created, location: @apidoc }
      else
        format.html { render :new }
        format.json { render json: @apidoc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apidocs/1
  # PATCH/PUT /apidocs/1.json
  def update
    respond_to do |format|
      if @apidoc.update(apidoc_params)
        format.html { redirect_to @apidoc, notice: 'Apidoc was successfully updated.' }
        format.json { render :show, status: :ok, location: @apidoc }
      else
        format.html { render :edit }
        format.json { render json: @apidoc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apidocs/1
  # DELETE /apidocs/1.json
  def destroy
    @apidoc.destroy
    respond_to do |format|
      format.html { redirect_to apidocs_url, notice: 'Apidoc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apidoc
      @apidoc = Apidoc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def apidoc_params
      params.require(:apidoc).permit(:name, :content)
    end
end
