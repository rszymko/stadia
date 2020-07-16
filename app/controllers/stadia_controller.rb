class StadiaController < ApplicationController
  before_action :set_stadium, only: %w[show edit update]
  def index
    @stadia = Stadium.order(:name)
  end

  def show; end

  def new
    @stadium = Stadium.new
  end

  def edit; end

  def create
    @stadium = Stadium.new(stadium_params)
    if @stadium.save
      flash[:success] = 'Stadium successfully saved'
      redirect_to @stadium
    else
      flash.now[:danger] = 'Error creating stadium'
      render new_stadium_path(@stadium)
    end
  end

  def update
    if @stadium.update(stadium_params)
      flash[:success] = 'Stadium successfully updated'
      redirect_to @stadium
    else
      flash.now[:danger] = 'Error updating stadium'
      redirect_to edit_stadium_path(@stadium)
    end
  end

  private

  def set_stadium
    @stadium = Stadium.find(params[:id])
  end

  def stadium_params
    params.require(:stadium).permit(:name, :image_file, :build_date, :demolition_date)
  end
end
