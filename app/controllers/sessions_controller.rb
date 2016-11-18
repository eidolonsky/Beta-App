class SessionsController < ApplicationController
  def create
    @user = User.from_omniauth(request.env['omniauth.auth'])
    session[:id] = @user.id
    redirect_to root_path
  end
  def set_team
    @team_store = Team.find(params[:team_store])
    @team_name = @team_store.name
    @team_id = @team_store.id
    session[:team] = @team_id
    session[:teamname] = @team_name
    redirect_to teams_path
  end
  def destroy
    if current_user
      session.delete(:id)
    end
    redirect_to root_path    
  end
end
