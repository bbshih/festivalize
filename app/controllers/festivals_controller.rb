class FestivalsController < ApplicationController
  def index
  end

  def new
    @festival = Festival.new
  end
end
