class ApplicationController < ActionController::Base
    def index
        render :'/layouts/index'
    end

    private
  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user
  end

  def authenticate_user
    if !logged_in?
      redirect_to root_path #define root_path
    end
  end
end