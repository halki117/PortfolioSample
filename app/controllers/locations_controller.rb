class LocationsController < ApplicationController

  def index
    @locations = Location.all
    gon.locations = @locations
  end

  def show
    @location = Location.find(params[:id])
  end

  def new
    @location = Location.new
  end

  def create
    @location = current_user.locations.build(location_params)
    if @location.save
      redirect_to root_path
    else
      render :new
    end
  end


  
  private
  def location_params
    params.require(:location).permit( :address, :description, images: [])  # :latitude, :longitude のキーにも値を入れる必要がある
  end
end
