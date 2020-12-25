class BarrierFree < ActiveHash::Base

  include ActiveHash::Associations
  has_many :ghs

  self.data = [
    {id: 1, name: '希望する'},
    {id: 2, name: '希望しない'}
  ]
end
