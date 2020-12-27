class BarrierFree < ActiveHash::Base

  include ActiveHash::Associations
  has_many :ghs

  self.data = [
    {id: 1, name: 'どちらでもよい'},
    {id: 2, name: '希望する'}
  ]
  
end
