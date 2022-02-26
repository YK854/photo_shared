# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create!(
  [
    # seed-img/user-img/ot*
    {name: 'Amelia', email: 'Amelia@test.com', password: 'password', image: File.open("./app/assets/images/seed-img/user-group-ot/ot-balloon.jpg")},
    {name: 'Harper', email: 'Harper@test.com', password: 'password', image: File.open("./app/assets/images/seed-img/user-group-ot/ot-light.jpg")},
    {name: 'Evelyn', email: 'Evelyn@test.com', password: 'password', image: File.open("./app/assets/images/seed-img/user-group-ot/ot-normal.jpg")},
    {name: 'Mila', email: 'Mila@test.com', password: 'password', image: File.open("./app/assets/images/seed-img/user-group-ot/ot-siuh.jpg")},
    # seed-img/user-img/o*
    {name: 'Adam', email: 'Adam@test.com', password: 'password', image: File.open("./app/assets/images/seed-img/user-group-o/o-kwa.jpg")},
    {name: 'Alan', email: 'Alan@test.com', password: 'password', image: File.open("./app/assets/images/seed-img/user-group-o/o-mountain.jpg")},
    {name: 'Andy', email: 'Andy@test.com', password: 'password', image: File.open("./app/assets/images/seed-img/user-group-o/o-normal.jpg")}, 
    {name: 'Carl', email: 'Carl@test.com', password: 'password', image: File.open("./app/assets/images/seed-img/user-group-o/o-ocean.jpg")}, 
    {name: 'Clay', email: 'Clay@test.com', password: 'password', image: File.open("./app/assets/images/seed-img/user-group-o/o-pierrot.jpg")}, 
  ]
)


Photo.create!(
  [
    {picture: File.open("./app/assets/images/seed-img/Amelia/Amwlia-img1.jpg"), title: 'ゴールデンアワー', description: 'この文章はダミーこの文章はダミーです。', tag_list: '気球,空,昼', user_id: users[0].id },
    {picture: File.open("./app/assets/images/seed-img/Harper/Harper-img1.jpg"), title: '夕暮れの町', description: 'この文章はダミーこの文章はダミーです。', tag_list: '都市,夕暮れ,アメリカ', user_id: users[1].id },
    {picture: File.open("./app/assets/images/seed-img/Evelyn/Evelyn-img2.jpg"), title: 'ストリート', description: 'この文章はダミーこの文章はダミーです。', tag_list: '町,列車,アメリカ', user_id: users[2].id },
    {picture: File.open("./app/assets/images/seed-img/Mila/Mila-img1.jpg"), title: '赤い花', description: 'この文章はダミーこの文章はダミーです。', tag_list: '草原,花,フランス', user_id: users[3].id },
    {picture: File.open("./app/assets/images/seed-img/kawa/kawa1.jpg"), title: '静かな湖', description: 'この文章はダミーこの文章はダミーです。', tag_list: '自然,湖,ベトナム', user_id: users[4].id },
    {picture: File.open("./app/assets/images/seed-img/Alan/mountain1.jpg"), title: '茶色の木造住宅', description: 'この文章はダミーこの文章はダミーです。', tag_list: '風景,緑,小屋', user_id: users[5].id },
    {picture: File.open("./app/assets/images/seed-img/Andy/Andy-img1.jpg"), title: '赤のロードバイク', description: 'この文章はダミーこの文章はダミーです。', tag_list: '列車,自転車,中国', user_id: users[6].id },
    {picture: File.open("./app/assets/images/seed-img/Carl/Carl-img1.jpg"), title: '曇り空の下', description: 'この文章はダミーこの文章はダミーです。', tag_list: '山,湖,雲', user_id: users[7].id },
    {picture: File.open("./app/assets/images/seed-img/Clay/Clay-img1.jpg"), title: 'ジャケットの男', description: 'この文章はダミーこの文章はダミーです。', tag_list: '男,炎,夜', user_id: users[8].id },
    {picture: File.open("./app/assets/images/seed-img/Amelia/Amwlia-img2.jpg"), title: '青い空の気球', description: 'この文章はダミーこの文章はダミーです。', tag_list: '気球,古い建物,空', user_id: users[0].id },
    {picture: File.open("./app/assets/images/seed-img/Harper/Harper-img2.jpg"), title: '日没', description: 'この文章はダミーこの文章はダミーです。', tag_list: '部屋,日没,アメリカ', user_id: users[1].id },
    {picture: File.open("./app/assets/images/seed-img/Evelyn/Evelyn-img1.jpg"), title: 'シティ', description: 'この文章はダミーこの文章はダミーです。', tag_list: '都市,ニューヨーク,アメリカ', user_id: users[2].id },
    {picture: File.open("./app/assets/images/seed-img/Mila/Mila-img2.jpg"), title: 'トラクター', description: 'この文章はダミーこの文章はダミーです。', tag_list: '花畑,昼,トラックター', user_id: users[3].id },
    {picture: File.open("./app/assets/images/seed-img/kawa/kawa2.jpg"), title: 'ベトナムの湖', description: 'この文章はダミーこの文章はダミーです。', tag_list: '自然,湖,朝', user_id: users[4].id },
    {picture: File.open("./app/assets/images/seed-img/Alan/mountain2.jpg"), title: '夜森の真ん中', description: 'この文章はダミーこの文章はダミーです。', tag_list: '風景,小屋,夜', user_id: users[5].id },
    {picture: File.open("./app/assets/images/seed-img/Andy/Andy-img2.jpg"), title: 'トラムの通り', description: 'この文章はダミーこの文章はダミーです。', tag_list: '白黒,雨,古い', user_id: users[6].id },
    {picture: File.open("./app/assets/images/seed-img/Carl/Carl-img2.jpg"), title: '海を見下ろす砂', description: 'この文章はダミーこの文章はダミーです。', tag_list: '海,昼,砂浜', user_id: users[7].id },
    {picture: File.open("./app/assets/images/seed-img/Clay/Clay-img2.jpg"), title: '小屋', description: 'この文章はダミーこの文章はダミーです。', tag_list: '道路,小屋,アメリカ', user_id: users[8].id },
    {picture: File.open("./app/assets/images/seed-img/Amelia/Amwlia-img3.jpg"), title: '空の熱気球', description: 'この文章はダミーこの文章はダミーです。', tag_list: '気球,空,昼', user_id: users[0].id },
    {picture: File.open("./app/assets/images/seed-img/Harper/Harper-img3.jpg"), title: '雨日の都市', description: 'この文章はダミーこの文章はダミーです。', tag_list: '都市,雨,アメリカ', user_id: users[1].id },
    {picture: File.open("./app/assets/images/seed-img/Evelyn/Evelyn-img3.jpg"), title: 'ニューヨーク', description: 'この文章はダミーこの文章はダミーです。', tag_list: '都市,ニューヨーク,道路', user_id: users[2].id },
    {picture: File.open("./app/assets/images/seed-img/Mila/Mila-img3.jpg"), title: '蝶と花', description: 'この文章はダミーこの文章はダミーです。', tag_list: 'オレンジ花,蝶,自然', user_id: users[3].id },
    {picture: File.open("./app/assets/images/seed-img/kawa/kawa3.jpg"), title: '濁流の力', description: 'この文章はダミーこの文章はダミーです。', tag_list: '自然,川', user_id: users[4].id },
    {picture: File.open("./app/assets/images/seed-img/Alan/mountain3.jpg"), title: '星空の下の火山', description: 'この文章はダミーこの文章はダミーです。', tag_list: '夜空,火山,夜', user_id: users[5].id },
    {picture: File.open("./app/assets/images/seed-img/Andy/Andy-img3.jpg"), title: '鉄道駅', description: 'この文章はダミーこの文章はダミーです。', tag_list: '鉄道,7番線,ドイツ', user_id: users[6].id },
    {picture: File.open("./app/assets/images/seed-img/Carl/Carl-img3.jpg"), title: '海の見える洞窟', description: 'この文章はダミーこの文章はダミーです。', tag_list: '風景,川,昼', user_id: users[7].id },
    {picture: File.open("./app/assets/images/seed-img/Clay/Clay-img3.jpg"), title: 'マスクの男', description: 'この文章はダミーこの文章はダミーです。', tag_list: '男,新聞,炎', user_id: users[8].id },
    {picture: File.open("./app/assets/images/seed-img/Amelia/Amwlia-img4.jpg"), title: '赤と黒の熱気球', description: 'この文章はダミーこの文章はダミーです。', tag_list: '気球,空,夜', user_id: users[0].id },
    {picture: File.open("./app/assets/images/seed-img/Harper/Harper-img4.jpg"), title: 'ブリッジ', description: 'この文章はダミーこの文章はダミーです。', tag_list: '橋,夕暮れ,アメリカ', user_id: users[1].id },
    {picture: File.open("./app/assets/images/seed-img/Evelyn/Evelyn-img4.jpg"), title: '通勤', description: 'この文章はダミーこの文章はダミーです。', tag_list: '都市,朝,アメリカ', user_id: users[2].id },
    {picture: File.open("./app/assets/images/seed-img/Amelia/Amwlia-img5.jpg"), title: '空中の熱気球', description: 'この文章はダミーこの文章はダミーです。', tag_list: '気球,空,夕暮れ', user_id: users[0].id },
    {picture: File.open("./app/assets/images/seed-img/Harper/Harper-img5.jpg"), title: '雪に覆われた道路', description: 'この文章はダミーこの文章はダミーです。', tag_list: '都市,雪,アメリカ', user_id: users[1].id },
    {picture: File.open("./app/assets/images/seed-img/Evelyn/Evelyn-img5.jpg"), title: 'シカゴ', description: 'この文章はダミーこの文章はダミーです。', tag_list: '都市,シカゴ,アメリカ', user_id: users[2].id },
    {picture: File.open("./app/assets/images/seed-img/Mila/Mila-img5.jpg"), title: '雪山とピンクの花', description: 'この文章はダミーこの文章はダミーです。', tag_list: '雪山,花,ピンク', user_id: users[3].id },
    {picture: File.open("./app/assets/images/seed-img/kawa/kawa5.jpg"), title: 'ノルウェーの湖', description: 'この文章はダミーこの文章はダミーです。', tag_list: '自然,ノルウェー,湖', user_id: users[4].id },
    {picture: File.open("./app/assets/images/seed-img/Alan/mountain5.jpg"), title: '雪山村の風景', description: 'この文章はダミーこの文章はダミーです。', tag_list: '山,雪,村', user_id: users[5].id },
    {picture: File.open("./app/assets/images/seed-img/Clay/Clay-img4.jpg"), title: '暗い廊下', description: 'この文章はダミーこの文章はダミーです。', tag_list: '廃墟,廊下,タイ', user_id: users[8].id },
    {picture: File.open("./app/assets/images/seed-img/Andy/Andy-img5.jpg"), title: '冬の駅', description: 'この文章はダミーこの文章はダミーです。', tag_list: '鉄道,男性,スウェーデン', user_id: users[6].id },
    {picture: File.open("./app/assets/images/seed-img/Carl/Carl-img5.jpg"), title: '灯台', description: 'この文章はダミーこの文章はダミーです。', tag_list: '海,灯台,アメリカ', user_id: users[7].id },
    {picture: File.open("./app/assets/images/seed-img/Clay/Clay-img5.jpg"), title: 'ベンチ', description: 'この文章はダミーこの文章はダミーです。', tag_list: '雲,ベンチ', user_id: users[8].id },
    {picture: File.open("./app/assets/images/seed-img/Mila/Mila-img4.jpg"), title: '白い花', description: 'この文章はダミーこの文章はダミーです。', tag_list: '花畑,花,日没', user_id: users[3].id },
    {picture: File.open("./app/assets/images/seed-img/kawa/kawa4.jpg"), title: 'テイラーズの川', description: 'この文章はダミーこの文章はダミーです。', tag_list: '自然,アメリカ,川', user_id: users[4].id },
    {picture: File.open("./app/assets/images/seed-img/Alan/mountain4.jpg"), title: '湖近くの焚き火', description: 'この文章はダミーこの文章はダミーです。', tag_list: '風景,湖,焚き火', user_id: users[5].id },
    {picture: File.open("./app/assets/images/seed-img/Andy/Andy-img4.jpg"), title: '黄色のトレイル', description: 'この文章はダミーこの文章はダミーです。', tag_list: '鉄道,冬,朝', user_id: users[6].id },
    {picture: File.open("./app/assets/images/seed-img/Carl/Carl-img4.jpg"), title: '日没の海', description: 'この文章はダミーこの文章はダミーです。', tag_list: '船,海,トルコ', user_id: users[7].id },
  ])