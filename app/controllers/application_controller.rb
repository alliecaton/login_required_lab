class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user
  helper_method :logged_in

  def current_user
    if !session[:name].nil?
      session[:name]
    end
  end

  def logged_in
    if session[:name].nil?
      redirect_to login_path
    end
  end


end
