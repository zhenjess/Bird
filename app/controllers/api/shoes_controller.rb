class Api::ShoesController < ApplicationController

  def index #show shoe index of all shoes
    @shoes = Shoe.all
  end

  def show 
    @shoe = Shoe.find_by(id: params[:id]) #show each shoe in my shoe index

    if @shoe
      render :show #if shoe is found, show shoe, else render error
    else
      render json: ["Birds not found"], status: 404
    end
  end

  private
  def shoe_params
    params.require(:shoe)
    .permit(:model, :gender, :color, :material, :size, :price, photos: [])
  end
end 