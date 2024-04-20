class SessionsController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]
  
  def new
session[:user_id] = nil
  end

  def create
   @user = User.find_by(username: params[:username])
  if @user && @user.authenticate(params[:password])
    session[:user_id] = @user.id
	flash[:notice] = "正常にログインできました。"
    redirect_to(favorites_url)
  else
    flash[:alert] = "ログインネームまたはパスワードが間違っています"
	redirect_to(login_url)
  end

  end

  def destroy
  session[:user_id] = nil
  flash[:notice] = "ログアウトしました。"
  redirect_to(favorites_url)
  end


  
end
