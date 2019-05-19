class UsersController < ApplicationController
  def new
  end

  def create
    if params[:password] == params[:password_confirmation]
      User.create(users_params)
      session[:user_id] = User.last.id
    else
      redirect_to '/signup'
    end
  end

  def welcome
  end

  private
  def users_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
