class StaticPagesController < ApplicationController
  def results
    @day = Day.last
  end

  def goals
    @day = Day.last
  end
end
