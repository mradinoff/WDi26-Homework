class MountainsController < ApplicationController
  def index
    @mountains = Mountain.all
  end

  def show
    @mountain = Mountain.find params[:id]
  end

  def new
  end

  def create
    @mountain = Mountain.create mountain_params
    redirect_to mountains_path(@mountain.id)
  end

  def edit
    @mountain = Mountain.find params[:id]
  end

  def destroy
    @mountain = Mountain.find params[:id]
    mountain.destroy
    redirect_to mountain_path
  end

  def mountain_params # Strong params
  # Whitelist
  params.require(:mountain).permit(:id, :name, :image, :elevation, :location, :first_ascent, :easiest_route)
  end
end
