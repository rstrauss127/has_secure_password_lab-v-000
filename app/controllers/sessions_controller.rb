class SessionsController < ApplicationController
  def create
    if params[:password] == params[:password_confirmation]
      @user = User.find_or_create_by(name: params[:name])
      session[:user_id] = @user.id

    end
  end
end
