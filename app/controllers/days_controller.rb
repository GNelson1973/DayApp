class DaysController < ApplicationController
  before_action :find_day, only: [:show, :edit, :update, :destroy]

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

    def day_params
      params.require(:day).permit(
      :inspiration, :challenge, :date, :push_up, :abdominal_crunch,
      :leg_Scissors, :kg, :meditation, :insight, :walk_run, :actual_push_ups, :image_name)
    end

end
