class FavoritenetsController < ApplicationController
 before_action :require_user_logged_in

  def create
    micropost = Micropost.find(params[:micropost_id])
    current_user.micropost(micropost)
    flash[:success] = 'お気に入り登録しました。'
    redirect_to micropost.user
  end

  def destroy
    micropost = Micropost.find(params[:micropost_id])
    current_user.unmicropost(micropost)
    flash[:success] = 'お気に入り解除しました。'
    redirect_to micropost.user
  end
end
