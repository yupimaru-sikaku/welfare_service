class GhService < ActiveHash::Base
  include ActiveHash::Associations
  has_many :ghs

  self.data = [
    { id: 1, name: '介護サービス包括型' },
    { id: 2, name: '外部サービス利用型' },
    { id: 3, name: '日中サービス支援型' },
    { id: 4, name: '分からない' }
  ]
end
