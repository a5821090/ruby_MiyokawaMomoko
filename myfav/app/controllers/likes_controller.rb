class LikesController < ApplicationController
end
class LikesController < ApplicationController
  def create
    Like.create(user_id: session[:user_id], favorite_id: params[:id])
    redirect_to favorites_path
  end
  def destroy
    Like.find_by(user_id: session[:user_id], favorite_id: params[:id]).destroy
    redirect_to favorites_path
  end
end