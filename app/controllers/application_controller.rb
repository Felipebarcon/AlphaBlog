class ApplicationController < ActionController::Base

  # User helper methods on all controllers and views
  helper_method :current_user, :logged_in?

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    # return true or false if a current user is logged in
    !!current_user
  end

  # Method to verify if user is logged in and can perform some actions
  def require_user
    if !logged_in?
      flash[:alert] = "You must be logged in to perform this action"
      redirect_to login_path
    end
  end

end
