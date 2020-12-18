class ResidentialStyle < ActiveHash::Base

  include ActiveHash::Associations
  has_many :services

  self.data = [
    {id: 0, name: '---'},
    {id: 1, name: '一軒家'},
    {id: 2, name: 'マンション'},
    {id: 3, name: 'アパート'}
   ]

end
