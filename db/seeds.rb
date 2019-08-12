# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

lady = Category.create( id: 1, name: "レディース", path: "1/")
men = Category.create( id: 2, name: "メンズ", path: "2/")
baby = Category.create( id: 3, name: "べビー・キッズ", path: "3/" )
interior = Category.create( id: 4, name: "インテリア・住まい・小物", path: "4/" )
book = Category.create( id: 5, name: "本・音楽・ゲーム", path: "5/" )
toy = Category.create( id: 6, name: "おもちゃ・ホビー・グッズ", path: "6/" )
cosme = Category.create( id: 7, name: "コスメ・香水・美容", path: "7/" )
phone = Category.create( id: 8, name: "家電・スマホ・カメラ", path: "8/" )
sport = Category.create( id: 9,name: "スポーツ・レジャー", path: "9/" )
handmade = Category.create( id: 10, name: "ハンドメイド", path: "10/" )
ticket = Category.create( id: 11, name: "チケット", path: "11/" )
car = Category.create( id: 12, name: "自動車・オートバイ", path: "12/" )
etc = Category.create( id: 13,name: "その他", path: "13/" )

