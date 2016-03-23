class ScannedsController < ApplicationController
  before_action :set_scanned, only: [:show, :edit, :update, :destroy]
  # GET /scanneds
  # GET /scanneds.json
  def index
    @scanneds = Scanned.all
    render json: @scanneds
  end

  # GET /scanneds/1
  # GET /scanneds/1.json
  def show
    render json: @scanned
  end

  # GET /scanneds/new
  def new
    @scanned = Scanned.new
  end

  # GET /scanneds/1/edit
  def edit
  end

  # POST /scanneds
  # POST /scanneds.json
  def create
    @scanned = Scanned.create(scanned_params)
    respond_to do |format|
      if @scanned.save
       render json: @scanned, status: :created, location: @scanned
      else
        format.json { render json: @scanned.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scanneds/1
  # PATCH/PUT /scanneds/1.json
  def update
    respond_to do |format|
      if @scanned.update(scanned_params)
        format.html { redirect_to @scanned, notice: 'Scanned was successfully updated.' }
        format.json { render :show, status: :ok, location: @scanned }
      else
        format.html { render :edit }
        format.json { render json: @scanned.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scanneds/1
  # DELETE /scanneds/1.json
  def destroy
    @scanned.destroy
    respond_to do |format|
      format.html { redirect_to scanneds_url, notice: 'Scanned was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scanned
      @scanned = Scanned.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def scanned_params
      params.fetch(:scanned, {})
    end
end
