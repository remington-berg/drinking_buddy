class Api::SpecialsController < ApplicationController
  def index
    @specials = Special.all
    render "index.json.jb"
  end

  def show
    @specials = Special.where(day: params[:day])
    render "show.json.jb"
  end

  # def create
  #   @specials = Special.new{
  #     name: params[:name],
  #   }
  # end
end
