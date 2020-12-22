class RoomsController < ApplicationController

  before_action :authenticate_user!

  def create
    @room = Room.create
    @room_user1 = RoomUser.create(room_id: @room.id, user_id: current_user.id)
    @room_user2 = RoomUser.create(room_id: @room.id, user_id: room_params[:user_id])
    redirect_to "/rooms/#{@room.id}"
  end
  
  def show
    @room = Room.find(params[:id])
    if RoomUser.where(user_id: current_user.id,room_id: @room.id).present?
      @messages = @room.messages
      @message = Message.new
      @room_users = @room.room_users
    else
      redirect_back(fallback_location: root_path)
    end
  end

  def index
    @rooms = current_user.rooms.joins(:messages).includes(:messages).order("messages.created_at DESC")
  end
  
  private
  
  def room_params
    params.require(:room_user).permit(:user_id)
  end

end
