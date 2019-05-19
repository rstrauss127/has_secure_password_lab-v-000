class SessionsController < ApplicationController
  def create
    @user = User.find_by(name: params[:user][:name])
    return head(:forbidden) unless @user.authenticate(params[:user][:password])
    if params[:user][:password] == @user.password
        session[:user_id] = @user.id
    end
  end
end
