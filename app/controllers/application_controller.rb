class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_user
  before_filter :can_access_route

  def current_user
    begin
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
      rescue ActiveRecord::RecordNotFound
      session.delete(:user_id)
      return nil
    end
  end

  def logged_in?
    !!current_user
  end

  def authenticate
    unless logged_in?
      flash[:error] = "You must be logged in to access this section of the site"
      redirect_to login_url
    end
  end

  def can_access_route
    raise 'Permissions rejected' unless authorized?(current_user, params[:controller], params[:action])
  end

  def authorized?(user, controller, action)
    true
  end

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url , alert: "You can't access this page"
  end

end
