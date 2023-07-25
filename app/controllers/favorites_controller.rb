class FavoritesController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    user = User.find(params[:micropost_id])
    current_user.like(user)
    flash[:success] = 'お気に入り登録しました。'
    redirect_to user
  end

  def destroy
    user = User.find(params[:micropost_id])
    current_user.dislike(user)
    flash[:success] = 'お気に入り登録を解除しました。'
    redirect_to user
  end
end
