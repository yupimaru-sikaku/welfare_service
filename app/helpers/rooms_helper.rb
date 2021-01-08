module RoomsHelper
  # 最新メッセージのデータを取得して表示するメソッド
  def most_new_message_preview(room)
    # 最新メッセージのデータを取得する
    message = room.messages.order(updated_at: :desc).limit(1)
    # 配列から取り出す
    message = message[0]
    # メッセージの有無を判定
    if message.present?
      # メッセージがあれば内容を表示
      tag.p message.content.to_s, class: 'dm_list__content__link__box__message'
    else
      # メッセージがなければ[ まだメッセージはありません ]を表示
      tag.p '[ まだメッセージはありません ]', class: 'dm_list__content__link__box__message'
    end
  end

  # 最新メッセージが写真かどうか判断するメソッド
  def most_new_message_preview_image(room)
    # 最新メッセージのデータを取得する
    message = room.messages.order(updated_at: :desc).limit(1)
    # 配列から取り出す
    message = message[0].image.attached?
  end

  # 相手ユーザー名を取得して表示するメソッド
  def opponent_user(room)
    # 中間テーブルから相手ユーザーのデータを取得
    room_user = room.room_users.where.not(user_id: current_user)
    # 相手ユーザーの名前を取得
    nickname = room_user[0].user.nickname
    # 名前を表示
    tag.p nickname.to_s, class: 'dm_list__content__link__box__name'
  end

  def opponent_user_image(room)
    # 中間テーブルから相手ユーザーのデータを取得
    room_user = room.room_users.where.not(user_id: current_user)
    # 相手ユーザーの名前を取得
    image = room_user[0].user.image
  end
end
