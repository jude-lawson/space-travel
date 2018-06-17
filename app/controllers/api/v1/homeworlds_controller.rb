class Api::V1::HomeworldsController < ApplicationController
  def index
    render json: Homeworld.all
  end

  def show
    render json: Homeworld.find(params[:id])
  end
end