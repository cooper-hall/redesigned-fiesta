class VendorSweetsController < ApplicationController

  def index
    render json: VendorSweet.all
  end

  def create
    vendor_sweet = VendorSweet.create!(price: params[:price], vendor_id: params[:vendor_id], sweet_id: params[:sweet_id])
    if (vendor_sweet)
      render json: vendor_sweet
    else
      render json: vendor_sweet.errors.full_messages, status: 422
    end
  end

  def destroy
    vendor_sweet = VendorSweet.find_by!(id: params[:id])
    if (vendor_sweet)
      render json: {}
    else 
      render json: vendor_sweet.errors.full_messages, status: 404
    end
  end
end
