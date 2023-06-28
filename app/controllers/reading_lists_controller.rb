class ReadingListsController < ApplicationController
  before_action :set_reading_list, only: %i[ show update destroy ]

  # GET /reading_lists
  def index
    @reading_lists = ReadingList.all

    render json: @reading_lists
  end

  # GET /reading_lists/1
  def show
    render json: @reading_list
  end

  # POST /reading_lists
  def create
    @reading_list = ReadingList.new(reading_list_params)

    if @reading_list.save
      render json: @reading_list, status: :created, location: @reading_list
    else
      render json: @reading_list.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /reading_lists/1
  def update
    if @reading_list.update(reading_list_params)
      render json: @reading_list
    else
      render json: @reading_list.errors, status: :unprocessable_entity
    end
  end

  # DELETE /reading_lists/1
  def destroy
    @reading_list.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reading_list
      @reading_list = ReadingList.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reading_list_params
      params.require(:reading_list).permit(:read, :user_id)
    end
end
