class ApplicationController < ActionController::Base
  protect_from_forgery
  force_ssl

  include SessionsHelper

  def current_user
  	@current_user ||= User.find(session[:user_id]) if session[:user_id] 
  end

  helper_method :current_user

  def hot_vacancy
    @vacancy = Vacancy.find(params[:id])
    render text: "hot" if @vacancy.hot?
  end
end
