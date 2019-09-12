class FavoritesController < ApplicationController

  def index
    @favorites = Favorite.all
    render json: @favorites
  end

  def create
    # byebug
    favorite = Favorite.create(user: session_user, shoe_id: params["shoe_id"])
    render json: favorite
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy

  end
end
