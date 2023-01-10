class VendorsController < ApplicationController
  def index
    render json: Vendor.all.to_json(only:[:id, :name])
  end

  def show
    vendor = Vendor.find_by!(id: params[:id])
    render json: vendor
  end
end
