class RoomsController < ApplicationController

  def index
  end

  def new
    @room = Room.new
  end

  def create
    binding.pry
    # １.room_params[:user_ids][0]でチャットしたいユーザーのIDを取得し、名前も取得 → Roomにデータを保存 → なので下のストロングパラメーターはuser_ids:[]のみ取得。
    # 2. createメソッドでは何故かroom_usersテーブルに一緒に保存されないため、それぞれのuser_idを取得してRoomUserモデルに2回保存作業をしている
    if @room = Room.create(name: User.find(room_params[:user_ids][0]).nickname)
      RoomUser.create(user_id: room_params[:user_ids][0], room_id: @room.id)
      RoomUser.create(user_id: room_params[:user_ids][1], room_id: @room.id)
      redirect_to "/rooms"
    else
      render :new
    end

  end

  def destroy
  end
  

  private

  # 配列に対して保存を許可したい場合は、キーに対し[]を値として記述する。
  def room_params
    params.require(:room).permit(user_ids: [])
  end

end
