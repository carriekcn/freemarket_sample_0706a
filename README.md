# README

![ER図](https://i.gyazo.com/6c19aaeae08b7bbb3f7cd5167d752fea.png)

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false|
### Association
- has_many :users_valuations
- has_many :items
- has_one :user_detail
- has_many :valuations, through: :users_valuations

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
|payjp_id|integer|
### Association
- belongs_to :user
- has_one :point

## valuationsテーブル
|Column|Type|Options|
|------|----|-------|
|valuation|integer|null: false|
### Association
- has_many :users_valuations
- has_many :users, through: :users_valuations

## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|name|text|null: flase|
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
- belongs_to :user
- has_many :items_categories
- belongs_to :comments
- has_many :categories, through: :items_categories

## item_imagesテーブル
|Column|Type|Options|
|------|----|-------|
|image|string
|item_id|references|null: false, foreign_key: true|
### Association
- belongs_to :item

## categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|path|integer|null: false|
### Association
- has_many :items_categories
- has_many :items, through: :items_categories

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
|user_id|references|null: false, foreign_key: true|
|items_id|references|null: false, foreign_key: true|
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
### Association
- belongs_to :user
- belongs_to :valuation

## items_categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|item_id|references|null: false, foreign_key: true|
|category_id|references|null: false, foreign_key: true|

### Association
- belongs_to :item
- belongs_to :category