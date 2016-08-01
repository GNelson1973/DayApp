class DaysController < ApplicationController
  before_action :find_day, only: [:show, :edit, :update, :destroy]

  def index
    @days = Day.all.order("date DESC")
  end

  def show
  end

  def new
    @day = Day.new
  end

  def create
    @day = Day.new(day_params)

    if @day.save
      redirect_to @day
    else
      render 'new'
    end
  end

  def
     edit
  end

  def update
  end

  def destroy
  end

  private

    def find_day
      @day = Day.find(params[:id])
    end

    def day_params
      params.require(:day).permit(:inspiration, :challenge, :date)
    end

end
