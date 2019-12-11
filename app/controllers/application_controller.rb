class ApplicationController < ActionController::Base

  private
  def current_user
    # @current_user ||= session[:user_id] && User.find(session[:user_id])
    @current_user ||= User.find_by_auth_token!(cookies[:auth_token]) if cookies[:auth_token]
  end

  helper_method :current_user
end
