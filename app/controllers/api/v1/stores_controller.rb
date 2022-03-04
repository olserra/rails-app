class Api::V1::StoresController < ApplicationController
  def index
    stores = Store.all
    render json: stores, status: 200
  end

  def create
    store = Store.new(
      name: prod_params[:name],
      location: prod_params[:location],
      )
      if store.save
        render json: store, status: 200
      else
        render json: {error: "Error creating store."}
      end
  end

  def show
    store = Store.find_by(id:params[:id])
    if store
      render json: store, status: 200
    else
      render json: {error: "Store not found"}
    end
  end

  def prod_params
    params.require(:store).permit([
      :name,
      :location,
    ])
  end
end
