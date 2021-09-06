class UsersController < ApplicationController
  def index
    users = User.all
    render json: users
  end

  def create
    user = User.new(
    name: params[:name],
    user_name: params[:user_name],
    bio: params[bio],
    location: params[:location]
  )
    user.save
    render json: user 
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def update
    user = User.find(params[:id])
    user.name = params[:name] || user.name
    user.user_name = params[:user_name] || user.user_name
    user.bio = params[:bio] || user.bio
    user.location = params[:location] || user.location
    user.save
    render json: user
  end

  def destroy
    user = User.find_by(id: params[:id])
    user.destroy
    render json: {message: "Your user profile is deleted."}
  end
end
