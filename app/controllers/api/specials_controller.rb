class Api::SpecialsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    @specials = Special.all
    render "index.json.jb"
  end

  def show
    @specials = Special.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @specials = Special.new(
      name: params[:name],
      description: params[:description],
      day: params[:day],
      restaurant_id: params[:restaurant_id],
    )
    if @specials.save
      render json: { message: "Good on you!" }, status: :created
    else
      render json: { errors: @specials.errors.full_messages }, status: :bad_request
    end
  end

  def update
    input = params["id"]
    @specials = Special.find_by(id: input)
    @specials.name = params[:name] || @specials.name
    @specials.description = params[:description] || @specials.description
    @specials.day = params[:day] || @specials.day
    @specials.restaurant_id = params[:restaurant_id] || @specials.restaurant_id

    if @specials.save
      render "show.json.jb"
    else
      render json: { errors: @specials.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
