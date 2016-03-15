class MainController < ApplicationController
  def index
  end

  def create
    render json: params
  end
end
