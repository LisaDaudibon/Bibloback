class ReadingItemsController < ApplicationController
  before_action :set_reading_item, only: %i[ show update destroy ]
  
  # GET /reading_items
  def index
    
    @reading_items = ReadingItem.all
    render json: @reading_items
  end

  # GET /reading_items/1
  def show
    render json: @reading_item
  end

  # POST /reading_items
  def create
    @reading_item = ReadingItem.new(reading_item_params)

    if @reading_item.save
      render json: @reading_item, status: :created, location: @reading_item
    else
      render json: @reading_item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /reading_items/1
  def update
    if @reading_item.update(reading_item_params)
      render json: @reading_item
    else
      render json: @reading_item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /reading_items/1
  def destroy
    @reading_item.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reading_item
      @reading_item = ReadingItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reading_item_params
      params.require(:reading_item).permit(:read, :book_id, :reading_goal_id, :reading_list_id)
    end
end
