class FavoritesController < ApplicationController
  
  def create
    @micropost = Micropost.find(params[:id])
    Favorite.create(user_id: current_user.id, micropost_id: @micropost.id)
    redirect_to root_path
  end
end
