class Api::OrdersController < ApplicationController
  def index
    # @orders = Order.all #shoe order index only
    @orders = Order.where(cart_id: params[:id])
    render 'api/orders/show' #show order index of all shoes per cart
  end

  def show
    # @order = Order.find_by(id: params[:id]) #define each order by id

    # if @order
    #   render :show #if order is made, show made order else show empty order
    # else
    #   render json: ["Cart is empty"], status: 404 
    # end
    @order = Order.find_by(id: params[:id]) #define each order by unique id
    @shoe = Shoe.find_by(id: @order.shoe_id) #specific ordered shoe per id
    render 'api/orders/show' #show each shoe order
  end

  def create #create order of shoes
    @order = Order.new(order_params) #create new order
    @order.cart_id = params[:cart_id] #define specific cart's order

    if !@order.id #if no order (empty cart)
      @order.save #associate shoe to order
      @shoe = Shoe.find_by(id: @order.shoe_id) #find an order's shoes and show
      render 'api/orders/show'
    else
      render json: {"errors": [@order.errors.full_messages]}, status: 200 #render error if already order already exists?
    end
  end


  def update
    @order = Order.find_by(id: params[:id])

    if @order
      if @order.update(order_params) #update orders with additional shoes per shoe id
        @shoe = Shoe.find_by(id: @order.shoe_id)
        render 'api/orders/show' #show updated shoe order
      end
    end
  end

  def destroy
    @order = Order.find_by(id: params[:id])

    if @order
      @order.destroy  #allow remove made shoe order
      @shoe = Shoe.find_by(id: @order.shoe_id)
      render 'api/orders/show' #show resulting order
    end
  end

  private
  def order_params
    params.require(:order).permit(:shoe_id, :cart_id, :size, :quantity)
  end
end