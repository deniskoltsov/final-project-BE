class FavoritesController < ApplicationController

  def index
    render json: Favorite.all
  end

  def show

  end

  def create
    new_favorite = Favorite.new(restaurantName: params[:restaurantName], street: params[:street], city: params[:city], state: params[:state], zip: params[:zip], phone: params[:phone], itemName: params[:itemName], price: params[:price], description: params[:description])
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

  end

end
