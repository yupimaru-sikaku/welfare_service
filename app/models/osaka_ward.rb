class OsakaWard < ActiveHash::Base
  include ActiveHash::Associations
  has_many :ghs

  self.data = [
    { id: 1, name: '旭区' },
    { id: 2, name: '阿倍野区' },
    { id: 3, name: '生野区' },
    { id: 4, name: '北区' },
    { id: 5, name: '此花区' },
    { id: 6, name: '城東区' },
    { id: 7, name: '住之江区' },
    { id: 8, name: '住吉区' },
    { id: 9, name: '大正区' },
    { id: 10, name: '中央区' },
    { id: 11, name: '鶴見区' },
    { id: 12, name: '天王寺区' },
    { id: 13, name: '浪速区' },
    { id: 14, name: '西区' },
    { id: 15, name: '西成区' },
    { id: 16, name: '西淀川区' },
    { id: 17, name: '東住吉区' },
    { id: 18, name: '東成区' },
    { id: 19, name: '東淀川区' },
    { id: 20, name: '平野区' },
    { id: 21, name: '福島区' },
    { id: 22, name: '港区' },
    { id: 23, name: '都島区' },
    { id: 24, name: '淀川区' },
    { id: 25, name: '堺区' },
    { id: 26, name: '中区' },
    { id: 27, name: '東区' },
    { id: 28, name: '西区' },
    { id: 29, name: '南区' },
    { id: 30, name: '北区' },
    { id: 31, name: '美原区' }
  ]
end
