# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create!(
  [
    # 6アカウント
    {name: 'Olivia', email: 'olivia@test.com', password: 'password', image: File.open("./app/assets/images/seed-img/user-img/o1.jpg")},
    {name: 'Olivi', email: 'olivi@test.com', password: 'password', image: File.open("./app/assets/images/seed-img/user-img/o2.jpg")},
    {name: 'Oliv', email: 'oliv@test.com', password: 'password', image: File.open("./app/assets/images/seed-img/user-img/o3.jpg")},
    {name: 'Oli', email: 'oli@test.com', password: 'password', image: File.open("./app/assets/images/seed-img/user-img/ot1.jpg")},
    {name: 'Ol', email: 'ol@test.com', password: 'password', image: File.open("./app/assets/images/seed-img/user-img/ot2.jpg")},
    {name: 'O', email: 'o@test.com', password: 'password', image: File.open("./app/assets/images/seed-img/user-img/ot3.jpg")},
  ]
)


Photo.create!(
  [
    {picture: File.open("./app/assets/images/seed-img/photo-img/p1.jpg"), title: '日本料理は美しい！', description: 'メキシコ料理好きな方にオススメ', tag_list: '風景', user_id: users[0].id },
    {picture: File.open("./app/assets/images/seed-img/photo-img/p2.jpg"), title: '日本料理は美しい！', description: 'メキシコ料理好きな方にオススメ', tag_list: '風景', user_id: users[1].id },
    {picture: File.open("./app/assets/images/seed-img/photo-img/p3.jpg"), title: '日本料理は美しい！', description: 'メキシコ料理好きな方にオススメ', tag_list: '風景', user_id: users[2].id },
    {picture: File.open("./app/assets/images/seed-img/photo-img/p4.jpg"), title: '日本料理は美しい！', description: 'メキシコ料理好きな方にオススメ', tag_list: '風景', user_id: users[3].id },
    {picture: File.open("./app/assets/images/seed-img/photo-img/p5.jpg"), title: '日本料理は美しい！', description: 'メキシコ料理好きな方にオススメ', tag_list: '風景', user_id: users[4].id },
    {picture: File.open("./app/assets/images/seed-img/photo-img/p6.jpg"), title: '日本料理は美しい！', description: 'メキシコ料理好きな方にオススメ', tag_list: '風景', user_id: users[5].id },
  ])
