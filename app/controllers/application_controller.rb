class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def welcome
    require_logged_in
    @user = current_user
  end

  def current_user
    session[:name]
  end

  def require_logged_in
    redirect_to login_path unless current_user
  end
end
