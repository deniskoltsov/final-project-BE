class UsersController < ApplicationController

  def index
    render json: User.all
  end

  def show
    puts "username:", params[:username]
    puts "password:", params[:password]
    user = User.where(username: params[:username], password: params[:password])
    render json: user
  end

  def create
    new_user = User.new(username: params[:username], password: params[:password], firstname: params[:firstname], lastname: params[:lastname], phone: params[:phone], email: params[:email], address: params[:address], city: params[:city], state: params[:state], zipcode: params[:zipcode])
    if new_user.save
      render json: new_user
    else
      render json: {'error': new_user.errors}
    end
  end

  def update
    found_user = User.where(username: params[:username])
    updated = found_user.update(firstname: params[:firstname], lastname: params[:lastname], phone: params[:phone], email: params[:email], address: params[:address], city: params[:city], state: params[:state], zipcode: params[:zipcode])

    if updated
      render json: updated
    else
      render json: {'error': updated.errors}
    end
  end

  def destroy
    users_array = User.where(username: params[:username])
    users_array.each do |user|
      user.destroy
    end
    render json: {'user controller': 'user destroyed'}
  end

  def user_favorites
  users_array = User.where(username: params[:username], password: params[:password])
  user_favs = users_array[0].favorites
  render json: user_favs
  end

end
