class Service < ApplicationRecord

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture

end
