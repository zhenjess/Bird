class Api::OrdersController < ApplicationController
  def index
    @orders = Order.all #show order index of all shoes
  end

  def show
    @order = Order.find_by(id: params[:id]) #show order in my cart

    if @order
      render :show #if order is made, show made order else render error
    else
      render json: ["Order not made"], status: 404 
    end
  end

  def create
    @order = Order.new(order_params)

    if @order.save #allow create order
      render :show #show created order else render error can't create order
    else
      render json: ["Cannot create order"], status: 404 
    end
  end

  private
  def order_params
    params.require(:order).permit(:shoe_id, :cart_id, :size, :quantity)
  end
end