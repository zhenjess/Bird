class Api::CartsController < ApplicationController
  def create
    @cart = Cart.new(user_id: params[:user_id]) #a user's cart
    
    #if cart has orders, show full cart else show empty cart
    #show user's created cart or render error if user has no cart
    render 'api/cart/show'
  end

  def show #show user's cart shoe order if user has a cart
    @cart = Cart.where(id: params[:id]).where(user_id: params[:user_id])
                .includes(:orders, :shoes)
    @cart = @cart[0]

    if @cart
        render 'api/cart/show'
    else
        render json: { errors: 'Not Available'}, status: 400
    end
  end
end