class SweetsController < ApplicationController

  def index
    render json: Sweet.all.to_json(only:[:id, :name])
  end

  def show
    sweet = Sweet.find_by!(id: params[:id])
    render json: sweet
  end
end
