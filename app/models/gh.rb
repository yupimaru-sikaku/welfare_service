class Gh < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to_active_hash :prefecture
  belongs_to_active_hash :osaka_city
  belongs_to_active_hash :gender
  belongs_to_active_hash :residential_style
  belongs_to_active_hash :barrier_free
  belongs_to_active_hash :use_holiday
  belongs_to_active_hash :gh_service
  belongs_to_active_hash :staff_time
  belongs_to_active_hash :from_station

  has_many :favorites, dependent: :destroy

  has_many_attached :images

  def was_attached?
    image.attached?
  end
end
