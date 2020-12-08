class Api::SpecialsController < ApplicationController
  def index
    @specials = Special.all
    render "index.json.jb"
  end

  def show
    @specials = Special.where(day: params[:day])
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
end
