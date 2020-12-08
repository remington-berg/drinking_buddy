class Api::RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    render "index.json.jb"
  end

  def show
    @restaurants = Restaurant.find_by(id: params[:id])
    render "show.json.jb"
  end
end
