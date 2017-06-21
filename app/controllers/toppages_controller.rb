class ToppagesController < ApplicationController
  def index
    if logged_in?
      @user = current_user
      @micropost = current_user.microposts.build
      @microposts = current_user.feed_microposts.order('created_at DESC').page(params[:page])
      @favoriteposts = current_user.favoriteposts.order('created_at DESC').page(params[:page])
      counts(@user)
    end
  end
end