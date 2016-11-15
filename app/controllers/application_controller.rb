class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  private 

  def current_user
    @current_user ||= User.find_by(id: session[:id])
  end
  def current_team
    @current_team||= Team.find_by(user_id: session[:id])
  end

  helper_method :current_user
  helper_method :current_team
end
