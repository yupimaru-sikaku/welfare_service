# サービス検索＿共通
class OsakaCity < ActiveHash::Base

  include ActiveHash::Associations
  has_many :ghs

  self.data = [
    {id: 1, name: '大阪市'},
    {id: 2, name: '堺市'}, {id: 3, name: '池田市'},
    {id: 4, name: '和泉市'}, {id: 5, name: '泉大津市'},
    {id: 6, name: '泉佐野市'}, {id: 7, name: '茨木市'},
    {id: 8, name: '大阪挟山市'}, {id: 9, name: '貝塚市'},
    {id: 10, name: '柏原市'}, {id: 11, name: '交野市'},
    {id: 12, name: '門真市'}, {id: 13, name: '河南町'},
    {id: 14, name: '河内長野市'}, {id: 15, name: '岸和田市'},
    {id: 16, name: '熊取町'}, {id: 17, name: '四條畷市'},
    {id: 18, name: '島本町'}, {id: 19, name: '吹田市'},
    {id: 20, name: '摂津市'}, {id: 21, name: '泉南市'},
    {id: 22, name: '太子町'}, {id: 23, name: '大東市'},
    {id: 24, name: '高石市'}, {id: 25, name: '高槻市'},
    {id: 26, name: '田尻町'}, {id:27, name: '忠岡町'},
    {id: 28, name: '千早赤阪村'}, {id: 29, name: '豊中市'},
    {id: 30, name: '豊能町'}, {id: 31, name: '豊田林市'},
    {id: 32, name: '寝屋川市'}, {id: 33, name: '能勢町'},
    {id: 34, name: '羽曳野市'}, {id: 35, name: '阪南市'},
    {id: 36, name: '東大阪市'}, {id: 37, name: '枚方市'},
    {id: 38, name: '藤井寺市'}, {id: 39, name: '松原市'},
    {id: 40, name: '岬町'}, {id: 41, name: '箕面市'},
    {id: 42, name: '守口市'}, {id: 43, name: '八尾市'}
  ]
end