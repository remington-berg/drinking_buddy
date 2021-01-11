class Api::RestaurantsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    @restaurants = Restaurant.all
    render "index.json.jb"
  end

  def create
    @restaurant = Restaurant.new(
      name: params[:name],
      address: params[:address],
      phone_number: params[:phone_number],
      image_url: params[:image_url],
    )
    if @restaurant.save
      render json: { message: "You did it!" }, status: :created
    else
      render json: { errors: @restaurant.errors.full_messages }, status: :bad_request
    end
  end

  def show
    @restaurant = Restaurant.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @restaurant = Restaurant.find_by(id: params["id"])
    @restaurant.name = params[:name] || @restaurant.name
    @restaurant.address = params[:address] || @restaurant.address
    @restaurant.phone_number = params[:phone_number] || @restaurant.phone_number
    @restaurant.image_url = params[:image_url] || @restaurant.image_url

    if @restaurant.save
      render "show.json.jb"
    else
      render json: { errors: @restaurant.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
