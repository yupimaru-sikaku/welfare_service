# テーブル設計

## users テーブル

| Column             | Type    | Options                   |
| ------------------ | ------- | ------------------------- |
| nickname           | string  | null: false, unique: true |
| email              | string  |                           |
| encrypted_password | string  | null: false               |

### Association

- has_many :services, dependent: :destroy
- has_many :rooms, through: :room_users
- has_many :messages
- has_many :room_users


## services テーブル

| Column                 | Type       | Options                        |
| ---------------------- | ---------- | ------------------------------ |
| name                   | string     | null: false                    |
| user                   | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many_attached :images

## rooms テーブル

| Column  | Type       | Option                         |
| ------- | ---------- | ------------------------------ |
| name    | string     | null: false                    |

### Association

- has_many :users, througn: :room-users
- has_many :messages

## room_users テーブル

| Column        | Type       | Option                         |
| ------------- | ---------- | ------------------------------ |
| room          | references | null: false, foreign_key: true |
| user          | references | null: false, foreign_key: true |

### Association

- has_many :users
- has_many :rooms

## messages テーブル

| Column        | Type       | Option                         |
| ------------- | ---------- | ------------------------------ |
| content       | string     | null: false                    |
| user          | references | null: false, foreign_key: true |
| room          | references | null: false, foreign_key: true |

### Association

- has_many :users
- belongs_to :room

## ghs テーブル

| Column               | Type    | Option      |
| -------------------- | --------| ----------- |
| name                 | string  | null: false |
| price                | integer | null: false |
| capacity             | integer | null: false |
| phone_number         | string  |             |
| fax_number           | string  |             |
| email                | string  |             |
| description          | text    |             |
| station              | string  | null: false |
| construction_year    | integer | null: false |
| construction_month   | integer | null: false |
| prefecture_id        | integer | null: false |
| osaka_city_id        | integer | null: false |
| osaka_ward_id        | integer |             |
| gender_id            | integer | null: false |
| residential_style_id | integer | null: false |
| barrier_free_id      | integer | null: false |
| use_holiday_id       | integer | null: false |
| gh_service_id        | integer | null: false |
| staff_time_id        | integer | null: false |
| from_station_id      | integer | null: false |

### Association
  
 - belongs_to :user
 - belongs_to_active_hash :prefecture
 - belongs_to_active_hash :osaka_city
 - belongs_to_active_hash :osaka_ward
 - belongs_to_active_hash :gender
 - belongs_to_active_hash :residenial_style
 - belongs_to_active_hash :barrier_free
 - belongs_to_active_hash :use_holiday
 - belongs_to_active_hash :gh_service
 - belongs_to_active_hash :staff_time
 - belongs_to_active_hash :from_station

