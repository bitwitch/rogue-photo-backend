class Api::V1::UsersController < ApplicationController
  def index
    users = User.all 
    render json: users
  end

  def create
    user = User.new(user_params)
    if user && user.save
      render json: user 
    else 
      render json: {error: 'invalid user information'}
    end 
  end

  def update 

  end 

  def destroy 

  end 

  private 

  def user_params 
    params.permit(:name, :email, :phone, :password, :password_confirmation)
  end 

end
