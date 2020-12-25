class Gender < ActiveHash::Base

  include ActiveHash::Associations
  has_many :ghs

  self.data = [
    {id: 1, name: '男性'},
    {id: 2, name: '女性'},
    {id: 3, name: 'どちらでも'}
  ]

end
