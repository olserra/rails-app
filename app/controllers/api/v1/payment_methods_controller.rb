class Api::V1::PaymentMethodsController < ApplicationController
  def index
    payment_methods = PaymentMethod.all
    render json: payment_methods, status: 200
  end

  def create
    payment_method = PaymentMethod.new(prod_params)
    if payment_method.save
      render json: payment_method, status: 200
    else
      render json: {error: "Error creating payment_method."}
    end
  end

  def show
    payment_method = PaymentMethod.find_by(id:params[:id])
    if payment_method
      render json: payment_method, status: 200
    else
      render json: {error: "Payment Method not found"}
    end
  end

  def prod_params
    params.require(:payment_method).permit([
      :payment_type,
      :name
    ])
  end
end
