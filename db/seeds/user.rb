User.create(nickname: "木村将貴", email: "1@icloud.com", password: "111111", password_confirmation: "111111")
user = User.find(1)
user.image.attach(io: File.open('app/assets/images/masaki.png'), filename: 'masaki.png')
User.create(nickname: "松下晃樹", email: "2@icloud.com", password: "111111", password_confirmation: "111111")
user = User.find(2)
user.image.attach(io: File.open('app/assets/images/koki.png'), filename: 'koki.png')
User.create(nickname: "永尾享春", email: "3@icloud.com", password: "111111", password_confirmation: "111111")
user = User.find(3)
user.image.attach(io: File.open('app/assets/images/yukiharu.png'), filename: 'yukiharu.png')
User.create(nickname: "ゆぴまる4", email: "4@icloud.com", password: "111111", password_confirmation: "111111")
User.create(nickname: "ゆぴまる5", email: "5@icloud.com", password: "111111", password_confirmation: "111111")