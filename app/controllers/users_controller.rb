class UsersController < ApplicationController

  def index
    render json: User.all
  end

  def show
    user = User.where(username: params[:username])
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
    updated = found_user.update(user_params)

    if updated
      render json: updated
    else
      render json: {'error': updated.errors}
    end
  end

  def destroy
    User.delete_all(username: params[:username])
    render json: {'Users controller': 'USER DESTROYED'}
  end

end
