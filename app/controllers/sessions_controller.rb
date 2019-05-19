class SessionsController < ApplicationController
  def create
    @user = User.find_by(name: params[:name])
    if params[:password] == @user.password
        session[:user_id] = @user.id
    end
  end
end
