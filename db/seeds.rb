# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create!(
  [
    {name: 'Adam', email: 'Adam@test.com', password: 'password', image: File.open("./app/assets/images/seed-img/user-img/o1.jpg")},
    {name: 'Alan', email: 'Alan@test.com', password: 'password', image: File.open("./app/assets/images/seed-img/user-img/o2.jpg")},
    {name: 'Andy', email: 'Andy@test.com', password: 'password', image: File.open("./app/assets/images/seed-img/user-img/o3.jpg")},
    {name: 'Carl', email: 'Carl@test.com', password: 'password', image: File.open("./app/assets/images/seed-img/user-img/o3.jpg")},
    {name: 'Clay', email: 'Clay@test.com', password: 'password', image: File.open("./app/assets/images/seed-img/user-img/o3.jpg")},
    {name: 'Cody', email: 'Cody@test.com', password: 'password', image: File.open("./app/assets/images/seed-img/user-img/o3.jpg")},
    {name: 'Dean', email: 'Dean@test.com', password: 'password', image: File.open("./app/assets/images/seed-img/user-img/o3.jpg")},
    {name: 'Mia', email: 'Mia@test.com', password: 'password', image: File.open("./app/assets/images/seed-img/user-img/ot3.jpg")},
    {name: 'Amelia', email: 'Amelia@test.com', password: 'password', image: File.open("./app/assets/images/seed-img/user-img/ot3.jpg")},
    {name: 'Harper', email: 'Harper@test.com', password: 'password', image: File.open("./app/assets/images/seed-img/user-img/ot3.jpg")},
    {name: 'Evelyn', email: 'Evelyn@test.com', password: 'password', image: File.open("./app/assets/images/seed-img/user-img/ot3.jpg")},
    {name: 'Abigail', email: 'Abigail@test.com', password: 'password', image: File.open("./app/assets/images/seed-img/user-img/ot3.jpg")},
    {name: 'Emily', email: 'Emily@test.com', password: 'password', image: File.open("./app/assets/images/seed-img/user-img/ot3.jpg")},
    {name: 'Mila', email: 'Mila@test.com', password: 'password', image: File.open("./app/assets/images/seed-img/user-img/ot3.jpg")},
    {name: 'Ella', email: 'Ella@test.com', password: 'password', image: File.open("./app/assets/images/seed-img/user-img/ot3.jpg")},
  ]
)


Photo.create!(
  [
    {picture: File.open("./app/assets/images/seed-img/photo-img/p1.jpg"), title: '日本料理は美しい！', description: 'メキシコ料理好きな方にオススメ', tag_list: '都市,空,夜', user_id: users[0].id },
    {picture: File.open("./app/assets/images/seed-img/photo-img/p2.jpg"), title: '日本料理は美しい！', description: 'メキシコ料理好きな方にオススメ', tag_list: '風景,森,朝', user_id: users[1].id },
    {picture: File.open("./app/assets/images/seed-img/photo-img/p3.jpg"), title: '日本料理は美しい！', description: 'メキシコ料理好きな方にオススメ', tag_list: '風景,川,昼', user_id: users[2].id },
    {picture: File.open("./app/assets/images/seed-img/photo-img/p4.jpg"), title: '日本料理は美しい！', description: 'メキシコ料理好きな方にオススメ', tag_list: '都市,空,夜', user_id: users[3].id },
    {picture: File.open("./app/assets/images/seed-img/photo-img/p5.jpg"), title: '日本料理は美しい！', description: 'メキシコ料理好きな方にオススメ', tag_list: '風景,森,朝', user_id: users[4].id },
    {picture: File.open("./app/assets/images/seed-img/photo-img/p1.jpg"), title: '日本料理は美しい！', description: 'メキシコ料理好きな方にオススメ', tag_list: '風景,川,昼', user_id: users[0].id },
    {picture: File.open("./app/assets/images/seed-img/photo-img/p2.jpg"), title: '日本料理は美しい！', description: 'メキシコ料理好きな方にオススメ', tag_list: '都市,空,夜', user_id: users[1].id },
    {picture: File.open("./app/assets/images/seed-img/photo-img/p3.jpg"), title: '日本料理は美しい！', description: 'メキシコ料理好きな方にオススメ', tag_list: '風景,森,朝', user_id: users[2].id },
    {picture: File.open("./app/assets/images/seed-img/photo-img/p4.jpg"), title: '日本料理は美しい！', description: 'メキシコ料理好きな方にオススメ', tag_list: '風景,川,昼', user_id: users[3].id },
    {picture: File.open("./app/assets/images/seed-img/photo-img/p5.jpg"), title: '日本料理は美しい！', description: 'メキシコ料理好きな方にオススメ', tag_list: '都市,空,夜', user_id: users[4].id },
    {picture: File.open("./app/assets/images/seed-img/photo-img/p1.jpg"), title: '日本料理は美しい！', description: 'メキシコ料理好きな方にオススメ', tag_list: '風景,森,朝', user_id: users[0].id },
    {picture: File.open("./app/assets/images/seed-img/photo-img/p2.jpg"), title: '日本料理は美しい！', description: 'メキシコ料理好きな方にオススメ', tag_list: '風景,川,昼', user_id: users[1].id },
    {picture: File.open("./app/assets/images/seed-img/photo-img/p3.jpg"), title: '日本料理は美しい！', description: 'メキシコ料理好きな方にオススメ', tag_list: '都市,空,夜', user_id: users[2].id },
    {picture: File.open("./app/assets/images/seed-img/photo-img/p4.jpg"), title: '日本料理は美しい！', description: 'メキシコ料理好きな方にオススメ', tag_list: '風景,森,朝', user_id: users[3].id },
    {picture: File.open("./app/assets/images/seed-img/photo-img/p5.jpg"), title: '日本料理は美しい！', description: 'メキシコ料理好きな方にオススメ', tag_list: '風景,川,昼', user_id: users[4].id },
    {picture: File.open("./app/assets/images/seed-img/photo-img/p1.jpg"), title: '日本料理は美しい！', description: 'メキシコ料理好きな方にオススメ', tag_list: '都市,空,夜', user_id: users[0].id },
    {picture: File.open("./app/assets/images/seed-img/photo-img/p2.jpg"), title: '日本料理は美しい！', description: 'メキシコ料理好きな方にオススメ', tag_list: '風景,森,朝', user_id: users[1].id },
    {picture: File.open("./app/assets/images/seed-img/photo-img/p3.jpg"), title: '日本料理は美しい！', description: 'メキシコ料理好きな方にオススメ', tag_list: '風景,川,昼', user_id: users[2].id },
    {picture: File.open("./app/assets/images/seed-img/photo-img/p4.jpg"), title: '日本料理は美しい！', description: 'メキシコ料理好きな方にオススメ', tag_list: '都市,空,夜', user_id: users[3].id },
    {picture: File.open("./app/assets/images/seed-img/photo-img/p5.jpg"), title: '日本料理は美しい！', description: 'メキシコ料理好きな方にオススメ', tag_list: '風景,森,朝', user_id: users[4].id },
    {picture: File.open("./app/assets/images/seed-img/photo-img/p1.jpg"), title: '日本料理は美しい！', description: 'メキシコ料理好きな方にオススメ', tag_list: '風景,川,昼', user_id: users[0].id },
    {picture: File.open("./app/assets/images/seed-img/photo-img/p2.jpg"), title: '日本料理は美しい！', description: 'メキシコ料理好きな方にオススメ', tag_list: '都市,空,夜', user_id: users[1].id },
    {picture: File.open("./app/assets/images/seed-img/photo-img/p3.jpg"), title: '日本料理は美しい！', description: 'メキシコ料理好きな方にオススメ', tag_list: '風景,森,朝', user_id: users[2].id },
    {picture: File.open("./app/assets/images/seed-img/photo-img/p4.jpg"), title: '日本料理は美しい！', description: 'メキシコ料理好きな方にオススメ', tag_list: '風景,川,昼', user_id: users[3].id },
    {picture: File.open("./app/assets/images/seed-img/photo-img/p5.jpg"), title: '日本料理は美しい！', description: 'メキシコ料理好きな方にオススメ', tag_list: '都市,空,夜', user_id: users[4].id },

  ])
