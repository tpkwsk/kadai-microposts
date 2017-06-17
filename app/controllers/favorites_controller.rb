class FavoritesController < ApplicationController
  
  def create
    @micropost = Micropost.find(params[:micropost_id])
    current_user.addfavorite(@micropost)
    flash[:success] = 'favorite'
    redirect_to root_path
    end
  
  def destroy
    @micropost = Micropost.find(params[:micropost_id])
    current_user.removefavorite(@micropost)
    flash[:success] = 'unfavorite'
    redirect_to root_path
  end
  
end

# class FavoritesController < ApplicationController
  
#   def create
#     @micropost = Micropost.find(params[:id])
#     Favorite.create(user_id: current_user.id, micropost_id: @micropost.id)
#     redirect_to root_path
#   end
  
#   def destroy
#   end
  
# end