class Api::CartsController < ApplicationController
  def create
    @cart = Cart.new(user_id: params[:user_id]) #a user's cart

    if @cart.save 
        @user = current_user
        @user.cart
    else
        render json: @cart.errors.full_messages
    end
  end
end