# テーブル設計

## users テーブル

| Column             | Type    | Options                   |
| ------------------ | ------- | ------------------------- |
| nickname           | string  | null: false, unique: true |
| email              | string  |                           |
| encrypted_password | string  | null: false               |
| admin              | boolean | null: false               |
| last_name          | string  | null: false               |
| first_name         | string  | null: false               |
| last_name_reading  | string  | null: false               |
| first_name_reading | string  | null: false               |
| phone_number       | string  |                           |

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