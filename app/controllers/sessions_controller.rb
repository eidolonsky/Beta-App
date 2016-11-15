class SessionsController < ApplicationController
  def create
    @user = User.from_omniauth(request.env['omniauth.auth'])
    session[:id] = @user.id
    session[:team] = @user.teams.last
    redirect_to root_path
  end
  
  def set_team
    #session[:team] =
  end

  def destroy
    if current_user
      session.delete(:id)
    end
    redirect_to root_path    
  end
end
