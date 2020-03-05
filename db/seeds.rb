# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create!(name:  "Example User watawata",
  email: "watawataexample@railstutorial.org",
  password:              "foobarwatawata",
  password_confirmation: "foobarwatawata",
  birthdate: '1985-08-17',
  deathdate: '2050-11-19',
  sleepingtime: '7.0',
  commutingtime: '1.0',
  workingtime: '8.0',
  admin:true)

# 99.times do |n|
# name  = Faker::Name.name
# email = "example-#{n+1}@railstutorial.org"
# password = "password"
# User.create!(name:  name,
#     email: email,
#     password:              password,
#     password_confirmation: password,
#     birthdate: '1985-08-17',
#     deathdate: '2050-11-19',
#     sleepingtime: '7.0',
#     commutingtime: '1.0',
#     workingtime: '8.0',
#     )
#   end


Game.create!(
  name: "色彩感覚の達人（イージー）",
  cost: "100"
)

Game.create!(
  name: "色彩感覚の達人（ノーマル）",
  cost: "50"
)

Game.create!(
  name: "色彩感覚の達人（ハード）",
  cost: "5"
)

Game.create!(
  name: "岩マンX",
  cost: "777"
)

Game.create!(
  name: "デモンズ魂",
  cost: "1000"
)

Game.create!(
  name: "ブラックソウル3",
  cost: "3000"
)

Game.create!(
  name: "ブラックソウル2",
  cost: " 100"
)

Game.create!(
  name: "ブラックソウル1",
  cost: "13000"
)

Game.create!(
  name: "一匹狼",
  cost: "250"
)

Game.create!(
  name: "仮面４ゴールデン",
  cost: "444"
)

Game.create!(
  name: "仮面５ロイヤル",
  cost: "555"
)

Game.create!(
  name: "仮面3フェス",
  cost: "333"
)

Game.create!(
  name: "仮面２罪",
  cost: "222"
)

Game.create!(
  name: "仮面２罰",
  cost: "222"
)

Game.create!(
  name: "ファイナルクエスト１",
  cost: "10"
)

Game.create!(
  name: "ドラゴンファンタジー",
  cost: "30"
)