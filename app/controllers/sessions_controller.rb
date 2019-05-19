class SessionsController < ApplicationController
  def create
    @user = User.find_or_create_by(name: params[:name])
    session[:user_id] = @user.id
  end
end
