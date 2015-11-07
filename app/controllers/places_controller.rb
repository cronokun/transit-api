class PlacesController < ApplicationController
  def index
    @places = Place.stops_to_display.all
  end

  private

  def place_params
    params.permit(:q, :a)
  end
end
