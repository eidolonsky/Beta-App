class SessionsController < ApplicationController
  def create
    begin 
      @user = User.from_omniauth(request.env['omniauth.auth'])
      session[:id] = User.id
      flash[:success] = "Welcome, #{@user.name}!"
    rescue
      flash[:warning] = "There was an error while trying to authenticate you..."
    end
    redirect_to root
  end
  def destroy
  end
end
