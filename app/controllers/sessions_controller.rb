class SessionsController < ApplicationController
  def create
    @user = User.from_omniauth(request.env['omniauth.auth'])
    session[:id] = User.ids
    redirect_to root_path
  end
  def destroy
  end
end
