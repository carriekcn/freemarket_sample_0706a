# README

![ER図](https://i.gyazo.com/0e915da7c2a553ca050f121c5ad20ce6.png)

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false|
### Association
- has_many :valuations
- has_many :items
- belongs_to :user_detail
- has_many :valuations, through: :users_valuations
- has_many :items, through: :users_items

## user_detailsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|family_name|text|null: flase|
|first_name|text|null: flase|
|family_name_kana|text|null: flase|
|first_name_kana|text|null: flase|
|birthday|date|null: false|
|point_id|references|null: false, foreign_key: true|
|address|text|null: false|
|zip_code|string|null: false|
|phone_number|string|null: false|
### Association
- belongs_to :user
- belongs_to :point

## valuationsテーブル
|Column|Type|Options|
|------|----|-------|
|valuation|integer|null: false|
### Association
- has_many :users
- has_many :users, through: :users_valuations

## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|item_name|text|null: flase|
|size|string|null: false|
|state|string|null: false|
|shipping_charges|string|null: false|
|shipping_method|string|null: false|
|status|string|null: false|
|days_ship|integer|null: false|
|price|integer|null: false|
|category_id|references|null: false, foreign_key: true|
|description|text|null: false|
|good|integer|null: false|
|shipping_source_area|string|null: false|
|delivery status|string|null: false|
|payment status|string|null: false|
|created_at|daytime|null: false|
|updated_at|daytime|null: false|
### Association
- has_many :users
- has_many :item_images
- has_many :categories
- belongs_to :comments
- has_many :users, through: :users_items

## item_imagesテーブル
|Column|Type|Options|
|------|----|-------|
|image|string
|item_id|integer |null: false, foreign_key: true|
### Association
- belongs_to :item

## categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|category_name|string|null: false|
|path|integer|null: false|
### Association
- belongs_to :item

## pointsテーブル
|Column|Type|Options|
|------|----|-------|
|tikets_point|integer
|merupey_point|integer
### Association
- belongs_to :user_detaill

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer |null: false, foreign_key: true|
|items_id|integer |null: false, foreign_key: true|
|body|text|null: false|
|created_at|datetime|null: false|
|updated_at|datetime|null: false|
### Association
- has_many :items

## users_valuationsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|valuation_id|references|null: false, foreign_key: true|
|payjp_id|references|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :valuations

## users_itemsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|items_id|references|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :item