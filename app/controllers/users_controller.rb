class UsersController < ApplicationController

  # フォロー機能用
  def follow
    @user = User.find(params[:user_id])
    current_user.follow(@user)
    redirect_to user_path(@user)
  end
  
  def unfollow
    @user = User.find(params[:user_id])
    current_user.stop_following(@user)
    redirect_to user_path(@user)
  end
  
  
  def follow_list
    @users = User.find(params[:user_id])
  end
  
  def follower_list
    @users = User.find(params[:user_id])
  end
  # //フォロー機能用

  def show
    @user = User.find(params[:id])
    @currentUserEntry=RoomUser.where(user_id: current_user.id)
    @userEntry=RoomUser.where(user_id: @user.id)
    unless @user.id == current_user.id
      @currentUserEntry.each do |cu|
        @userEntry.each do |u|
          if cu.room_id == u.room_id then
            @isRoom = true
            @roomId = cu.room_id
          end
        end
      end
      if @isRoom
      else
        @room = Room.new
        @entry = RoomUser.new
      end
    end
  end

  def index
    @users = User.all
    @rooms = Room.all
  end

  def admin_request
  end

end
