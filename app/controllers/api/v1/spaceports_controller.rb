class Api::V1::SpaceportsController < ApplicationController
  def index
    render json: Spaceport.all
  end
end