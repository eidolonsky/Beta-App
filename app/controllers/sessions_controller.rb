class SessionsController < ApplicationController
  def create
    @user = User.from_omniauth(request.env['omniauth.auth'])
    session[:id] = @user.id
    redirect_to root_path
  end
  def set_team
    session[:team]='18'
  end
  def destroy
    if current_user
      session.delete(:id)
    end
    redirect_to root_path    
  end
end
