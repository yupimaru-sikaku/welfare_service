class StaffTime < ActiveHash::Base

  include ActiveHash::Associations
  has_many :ghs

  self.data = [
    {id: 1, name: '常に必要'},
    {id: 2, name: '日中のみ必要'},
    {id: 3, name: '日中活動後の夕方〜朝のみ必要'}
  ]
end
