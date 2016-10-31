class SessionsController < ApplicationController
  #def create
  #  @user = User.from_omniauth(request.env['omniauth.auth'])
  #  session[:id] = User.id
  #end
  def create 
    render text: request.env['omniauth.auth'].to_yaml
  end
  def destroy
  end
end
