class ReadingGoalsController < ApplicationController
  before_action :set_reading_goal, only: %i[ show update destroy ]

  # GET /reading_goals
  def index
    @reading_goals = ReadingGoal.all

    render json: @reading_goals
  end

  # GET /reading_goals/1
  def show
    render json: @reading_goal
  end

  # POST /reading_goals
  def create
    @reading_goal = ReadingGoal.new(reading_goal_params)

    if @reading_goal.save
      render json: @reading_goal, status: :created, location: @reading_goal
    else
      render json: @reading_goal.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /reading_goals/1
  def update
    if @reading_goal.update(reading_goal_params)
      render json: @reading_goal
    else
      render json: @reading_goal.errors, status: :unprocessable_entity
    end
  end

  # DELETE /reading_goals/1
  def destroy
    @reading_goal.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reading_goal
      @reading_goal = ReadingGoal.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reading_goal_params
      params.require(:reading_goal).permit(:pages, :complete, :rating, :start_date, :end_date, :user)
    end
end
