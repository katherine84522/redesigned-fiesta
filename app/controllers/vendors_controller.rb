class VendorsController < ApplicationController


    def index
        render json: Vendor.all.to_json(only: [:id, :name]), adapter: false
    end

    def show
        vendor = Vendor.find_by(id: params[:id])
        if vendor
            render json: vendor
        else
            render json: { "error": "Vendor not found" }, status: 404
        end
    end
end
