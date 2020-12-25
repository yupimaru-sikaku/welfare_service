# サービス検索で使用
class ServiceContent < ActiveHash::Base

  include ActiveHash::Associations
  has_many :services

  self.data = [
    { id: 1, name: '居宅介護' },
    { id: 2, name: '重度介護訪問' },
    { id: 3, name: '同行援護' },
    { id: 4, name: '行動援護' },
    { id: 5, name: '移動支援' },
    { id: 6, name: '生活介護' },
    { id: 7, name: '短期入所' },
    { id: 8, name: '自立訓練' },
    { id: 9, name: '就労移行支援' },
    { id: 10, name: '就労継続支援A型' },
    { id: 11, name: '就労継続支援B型' },
    { id: 12, name: '就労定着支援' },
    { id: 13, name: '自立生活援助' },
    { id: 14, name: '共同生活援助' },
    { id: 15, name: '児童発達支援' },
    { id: 16, name: '放課後等デイサービス' },
    { id: 17, name: '計画相談支援' },
    { id: 18, name: '障害児相談支援' },
    { id: 19, name: '地域移行支援' },
    { id: 20, name: '地域定着支援' }
  ]

end
