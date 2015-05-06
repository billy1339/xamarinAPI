class ThumbsDownsController < ApplicationController
  before_action :set_thumbs_down, only: [:show, :update, :destroy]

  # GET /thumbs_downs
  # GET /thumbs_downs.json
  def index
    @thumbs_downs = ThumbsDown.all

    render json: @thumbs_downs
  end

  # GET /thumbs_downs/1
  # GET /thumbs_downs/1.json
  def show
    render json: @thumbs_down
  end

  # POST /thumbs_downs
  # POST /thumbs_downs.json
  def create
    @thumbs_down = ThumbsDown.new(thumbs_down_params)

    if @thumbs_down.save
      render json: @thumbs_down, status: :created, location: @thumbs_down
    else
      render json: @thumbs_down.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /thumbs_downs/1
  # PATCH/PUT /thumbs_downs/1.json
  def update
    @thumbs_down = ThumbsDown.find(params[:id])

    if @thumbs_down.update(thumbs_down_params)
      head :no_content
    else
      render json: @thumbs_down.errors, status: :unprocessable_entity
    end
  end

  # DELETE /thumbs_downs/1
  # DELETE /thumbs_downs/1.json
  def destroy
    @thumbs_down.destroy

    head :no_content
  end

  private

    def set_thumbs_down
      @thumbs_down = ThumbsDown.find(params[:id])
    end

    def thumbs_down_params
      params.require(:thumbs_down).permit(:voteNumber)
    end
end
