class StagesController < ApplicationController
  before_filter :find_festival
  def new
    @stage = @festival.stages.build
    @stage.assets.build
  end
  private
  def find_festival
    @festival = Festival.find(params[:festival_id])
  end
end
