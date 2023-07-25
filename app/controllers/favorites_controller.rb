class FavoritesController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    micropost = Micropost.find(params[:micropost_id])
    current_user.like(micropost)
    flash[:success] = 'お気に入り登録しました。'
    redirect_to request.referer
  end

  def destroy
    micropost = Micropost.find(params[:micropost_id])
    current_user.dislike(micropost)
    flash[:success] = 'お気に入り登録を解除しました。'
    redirect_to request.referer
  end
end
