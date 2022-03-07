class Api::V1::PurchasesController < ApplicationController
  def index
    purchasess = Purchases.all
    render json: purchasess, status: 200
  end

  def create
    purchases = Purchases.new(
      quantity: prod_params[:quantity],
      value: prod_params[:value],
      payment_method: prod_params[:payment_method],
      voucher: prod_params[:voucher]
      description: prod_params[:description]
      )
      if purchases.save
        render json: purchases, status: 200
      else
        render json: {error: "Error creating review."}
      end
  end

  def show
    purchases = Purchases.find_by(id:params[:id])
    if purchases
      render json: purchases, status: 200
    else
      render json: {error: "Purchase not found"}
    end
  end

  def prod_params
    params.require(:purchase).permit([
      :name,
      :brand,
      :price,
      :description
    ])
  end
end
