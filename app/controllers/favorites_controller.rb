class FavoritesController < ApplicationController

  def index
    render json: Favorite.all
  end

  def show

  end

  def create
    new_favorite = Favorite.new(restaurantname: params[:restaurantname], street: params[:street], city: params[:city], state: params[:state], zip: params[:zip], phone: params[:phone], itemname: params[:itemname], price: params[:price], description: params[:description])
    new_favorite.user = User.find(params[:user_id])
    if new_favorite.save
      render json: new_favorite
    else
      render json: {'error': new_favorite.errors}
    end
  end

  def update

    if updated
      render json: updated
    else
      render json: {'error': updated.errors}
    end
  end

  def destroy
    favorites_array = Favorite.where(itemname: params[:itemname])
    favorites_array.each do |favorite|
      favorite.destroy
    end
    render json: {'favorite controller': 'favorite destroyed'}
  end

end
