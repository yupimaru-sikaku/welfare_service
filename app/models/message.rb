# チャットルームでのメッセージ機能で実装
class Message < ApplicationRecord

  belongs_to :user
  belongs_to :room
  
end
