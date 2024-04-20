class ApplicationController < ActionController::Base
  before_action :require_login

  
  private
  def require_login
    unless logged_in?
	
	  flash[:error] = "ログインが必要です。"
      redirect_to(login_url)
    end
	end
	
	def logged_in?
    session[:user_id].present?
  end
end
