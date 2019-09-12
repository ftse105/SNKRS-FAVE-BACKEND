class ShoesController < ApplicationController

  def index
    @shoes = Shoe.all
    render json: @shoes
  end

  def create
    @shoe = Shoe.create(shoe_params)
  end

  def show
    @shoe = Shoe.find(params[:id])
    render json: @shoe
  end

  private
  def shoe_params
		params.require(:shoe).permit(:name, :description, :brand, :image_url, :release_year, :price)
	end

end
