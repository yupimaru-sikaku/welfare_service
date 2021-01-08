class UseHoliday < ActiveHash::Base
  include ActiveHash::Associations
  has_many :ghs

  self.data = [
    { id: 1, name: '土日祝も利用希望(全日利用)' },
    { id: 2, name: '土日祝は利用しない' }
  ]
end
