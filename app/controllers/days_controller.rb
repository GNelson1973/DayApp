class DaysController < ApplicationController
  before_action :authenticate_user!
  before_action :find_day, only: [:show, :edit, :update, :destroy]
  before_action :day_user?, only: [:show]

  def index
    @days = Day.where(user_id: current_user).order("created_at DESC")
  end

  def show
  end

  def new
    @day = current_user.days.build
  end

  def create
    @day = current_user.days.build(day_params)

    if @day.save
      redirect_to @day
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @day.update(day_params)
      redirect_to @day
    else
      render "edit"
    end
  end

  def destroy
    @day.destroy
    redirect_to root_path
  end

  private

    def find_day
      @day = Day.find(params[:id])
    end

    def day_user?
      redirect_to root_path, notice: "You are not authorized for this page" unless @day.user_id == current_user.id
    end

    def authenticate_user!
      redirect_to new_user_session_path, notice: "You must login or signup first" unless user_signed_in?
    end

    def day_params
      params.require(:day).permit(
      :inspiration, :challenge, :date, :push_up, :abdominal_crunch,
      :leg_Scissors, :kg, :meditation, :insight, :walk_run, :actual_push_ups,
      :meditation_actual, :abcrunch_actual, :leg_scissors_actual, :walk_run_actual,
      :image_name)
    end

end
