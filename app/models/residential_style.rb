# サービス検索で使用
class ResidentialStyle < ActiveHash::Base

  include ActiveHash::Associations
  has_many :ghs

  self.data = [
    {id: 1, name: '一軒家'},
    {id: 2, name: 'マンション, アパート（1K)'},
    {id: 3, name: 'マンション, アパート（2K以上)'},
    {id: 4, name: 'どれでも可'}
   ]

end
