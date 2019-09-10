# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# ユーザーデータ
# User.create( nickname:'KI', email:'ki@test.fm', password:'111111', password_confirmation:'111111' )
# User.create( nickname:'YK', email:'yk@test.fm', password:'222222', password_confirmation:'222222' )
# User.create( nickname:'HR', email:'hr@test.fm', password:'333333', password_confirmation:'333333' )
# User.create( nickname:'KM', email:'km@test.fm', password:'444444', password_confirmation:'444444' )

# カテゴリーデータ
# lady = Category.create( id: 1, name: "レディース", path: "1/")
# men = Category.create( id: 2, name: "メンズ", path: "2/")
# baby = Category.create( id: 3, name: "べビー・キッズ", path: "3/" )
# interior = Category.create( id: 4, name: "インテリア・住まい・小物", path: "4/" )
# book = Category.create( id: 5, name: "本・音楽・ゲーム", path: "5/" )
# toy = Category.create( id: 6, name: "おもちゃ・ホビー・グッズ", path: "6/" )
# cosme = Category.create( id: 7, name: "コスメ・香水・美容", path: "7/" )
# phone = Category.create( id: 8, name: "家電・スマホ・カメラ", path: "8/" )
# sport = Category.create( id: 9,name: "スポーツ・レジャー", path: "9/" )
# handmade = Category.create( id: 10, name: "ハンドメイド", path: "10/" )
# ticket = Category.create( id: 11, name: "チケット", path: "11/" )
# car = Category.create( id: 12, name: "自動車・オートバイ", path: "12/" )
# etc = Category.create( id: 13,name: "その他", path: "13/" )

# chel = Category.create( id: 14, name: "Channel", path: "14/" )
# lv = Category.create( id: 15, name: "LouisVuitton", path: "15/" )
# nike = Category.create( id: 16, name: "Nike", path: "16/" )
# sup = Category.create( id: 17, name: "Supreme", path: "17/" )


# ***適宜お使いください***
# items
# Item.create( name:'サンダル', state:'used', shipping_charges:'300', shipping_method:'メルカリ便', days_ship: '5日', price: '890', description: 'かわいいです', shipping_source_area: '香川県', size: 'S', status: 'Open', good: '3', user_id: '1', category_id: '3', created_at: '2019-08-20', updated_at: '2019-08-20' )
# Item.create( name:'コスメ', state:'New', shipping_charges:'590', shipping_method:'ヤマト', days_ship: '3日', price: '3200', description: '新品です', shipping_source_area: '東京都', size: 'M', status: 'Open', good: '1', user_id: '1', category_id: '14', created_at: '2019-08-20', updated_at: '2019-08-20' )
# Item.create( name:'ブランド財布', state:'Used', shipping_charges:'380', shipping_method:'佐川急便', days_ship: '7日以内', price: '8500', description: 'ほぼ未使用', shipping_source_area: '大阪府', size: 'M', status: 'Open', good: '2', user_id: '1', category_id: '15', created_at: '2019-08-20', updated_at: '2019-08-20' )
# Item.create( name:'バックパック', state:'Used', shipping_charges:'400', shipping_method:'メルカリ便', days_ship: '5日', price: '1200', description: '多少よごれあり', shipping_source_area: '静岡県', size: 'L', status: 'Open', good: '2', user_id: '1', category_id: '16', created_at: '2019-08-20', updated_at: '2019-08-20' )

#item_images
# ItemImage.create( image: 'kid_sandal.png', item_id: '10', created_at: '2019-08-20', updated_at: '2019-08-20' )
# ItemImage.create( image: 'accs.png', item_id: '11', created_at: '2019-08-20', updated_at: '2019-08-20' )
# ItemImage.create( image: 'wallet.png', item_id: '12', created_at: '2019-08-20', updated_at: '2019-08-20' )
# ItemImage.create( image: 'bagpack.png', item_id: '13', created_at: '2019-08-20', updated_at: '2019-08-20' )

# Point.create( ticket_point: 1000000, merupay_point: 1000000)
# Point.create( ticket_point: 1000000, merupay_point: 1000000)
# Point.create( ticket_point: 1000000, merupay_point: 1000000)
Point.create( ticket_point: 1000000, merupay_point: 1000000)

# UserDetail.create( user_id: 1, family_name:'山田', first_name:'彩', family_name_kana:'ヤマダ', first_name_kana:'アヤ', birthday: '2009-01-01', point_id:'1', address:'青山', zip_code:'123-4567', phone_number:'09012345678', birthyear: '2009-01-01', birthmonth: '2009-01-01', prefecture:'東京都', city:'千代田区', building:'ビル' )
# UserDetail.create( user_id: 2, family_name:'山田', first_name:'彩', family_name_kana:'ヤマダ', first_name_kana:'アヤ', birthday: '2009-01-01', point_id:'2', address:'青山', zip_code:'123-4567', phone_number:'09012345678', birthyear: '2009-01-01', birthmonth: '2009-01-01', prefecture:'東京都', city:'千代田区', building:'ビル' )
UserDetail.create( user_id: 12, family_name:'山田', first_name:'彩', family_name_kana:'ヤマダ', first_name_kana:'アヤ', birthday: '2009-01-01', point_id:'5', address:'青山', zip_code:'123-4567', phone_number:'09012345678', birthyear: '2009-01-01', birthmonth: '2009-01-01', prefecture:'東京都', city:'千代田区', building:'ビル' )
UserDetail.create( user_id: 11, family_name:'山田', first_name:'彩', family_name_kana:'ヤマダ', first_name_kana:'アヤ', birthday: '2009-01-01', point_id:'4', address:'青山', zip_code:'123-4567', phone_number:'09012345678', birthyear: '2009-01-01', birthmonth: '2009-01-01', prefecture:'東京都', city:'千代田区', building:'ビル' )