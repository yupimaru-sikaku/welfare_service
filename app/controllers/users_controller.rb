class UsersController < ApplicationController
  # フォロー機能用
  # def follow
  #   @user = User.find(params[:user_id])
  #   current_user.follow(@user)
  #   redirect_to user_path(@user)
  # end

  # def unfollow
  #   @user = User.find(params[:user_id])
  #   current_user.stop_following(@user)
  #   redirect_to user_path(@user)
  # end

  # def follow_list
  #   @users = User.find(params[:user_id])
  # end

  # def follower_list
  #   @users = User.find(params[:user_id])
  # end
  # //フォロー機能用

  def show
    favorites = current_user.favorites.pluck(:gh_id)
    @gh_favorite_lists = Gh.find(favorites)
  end

  def index
    @users = User.all
    @rooms = Room.all
  end

  def admin_request
  end
end
