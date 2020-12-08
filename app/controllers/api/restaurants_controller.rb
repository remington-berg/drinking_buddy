class Api::RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    render "index.json.jb"
  end

  def show
    @restaurants = Restaurant.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @restaurants = Restaurant.new(
      name: params[:name],
      address: params[:address],
      phone_number: params[:phone_number],
    )
    if @restaurants.save
      render json: { message: "You did it!" }, status: :created
    else
      render json: { errors: @restaurants.errors.full_messages }, status: :bad_request
    end
  end
end
