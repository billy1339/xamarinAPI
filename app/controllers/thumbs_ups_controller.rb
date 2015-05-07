class ThumbsUpsController < ApplicationController
  before_action :set_thumbs_up, only: [:show, :update, :destroy]

  # GET /thumbs_ups
  # GET /thumbs_ups.json
  def index
    @thumbs_ups = ThumbsUp.all

    render json: @thumbs_ups
  end

  # GET /thumbs_ups/1
  # GET /thumbs_ups/1.json
  def show
    render json: @thumbs_up
  end

  # POST /thumbs_ups
  # POST /thumbs_ups.json
  def create
    @thumbs_up = ThumbsUp.new(thumbs_up_params)

    if @thumbs_up.save
      render json: @thumbs_up, status: :created, location: @thumbs_up
    else
      render json: @thumbs_up.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /thumbs_ups/1
  # PATCH/PUT /thumbs_ups/1.json
  def update
    @thumbs_up = ThumbsUp.find(params[:id])

    if @thumbs_up.update(thumbs_up_params)
      head :no_contentz
    else
      render json: @thumbs_up.errors, status: :unprocessable_entity
    end
  end

  # DELETE /thumbs_ups/1
  # DELETE /thumbs_ups/1.json
  def destroy
    @thumbs_up.destroy

    head :no_content
  end

  private

    def set_thumbs_up
      @thumbs_up = ThumbsUp.find(params[:id])
    end

    def thumbs_up_params
      params.require(:thumbs_up).permit(:voteNumber)
    end
end
