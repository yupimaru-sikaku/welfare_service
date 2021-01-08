class FromStation < ActiveHash::Base
  include ActiveHash::Associations
  has_many :ghs

  self.data = [
    { id: 1, name: '〜5分' },
    { id: 2, name: '5〜10分' },
    { id: 3, name: '15〜20分' },
    { id: 4, name: '20〜30分' },
    { id: 5, name: '30〜60分' }
  ]
end
