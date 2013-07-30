class FestivalsController < ApplicationController
  before_filter :find_festival, only: [:show, :edit, :update]

  def index
    @festivals = Festival.all
  end

  def new
    @festival = Festival.new
  end

  def create
    @festival = Festival.create(festival_params)
    if @festival.save
      redirect_to @festival, notice: "Festival added"
    end
  end

  def edit

  end

  def update
    binding.pry
    if @festival.update_attributes(festival_params)
      redirect_to @festival, notice: "Changes saved"
    else
      flash[:alert] = "Changes failed to save"
      render action: :edit
    end
  end

  def show

  end

  private
  def find_festival
    @festival = Festival.find(params[:id])
  end

  def festival_params
    params.require(:festival).permit( :name, :date);
  end
end
