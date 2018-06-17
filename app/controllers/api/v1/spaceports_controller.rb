class Api::V1::SpaceportsController < ApplicationController
  def index
    render json: Spaceport.all
  end

  def show
    render json: Spaceport.find(params[:id])
  end
end