class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :room_users, dependent: :destroy
  has_many :rooms, through: :room_users
  has_many :messages, dependent: :destroy
  has_many :favorites, dependent: :destroy

  # ActiveStorageでアイコン作成用
  has_one_attached :image

  # フォロー機能用で実装
  acts_as_followable
  acts_as_follower

  def was_attached?
    image.attached?
  end
end
