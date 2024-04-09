# README
## usersテーブル
| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
- has_many :items
- has_many :comments
- has_many :favorites

## itemsテーブル
| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| text   | string     | null : false                   |
| user   | references | null: false, foreign_key: true |
- belongs_to :user
- has_many :comments
- has_many :favorites

## commentsテーブル
| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| text   | string     | null : false                   |
| user   | references | null: false, foreign_key: true |
| item   | references | null: false, foreign_key: true |
- belongs_to :user
- belongs_to :item

## favoritesテーブル
| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| item   | references | null: false, foreign_key: true |
- belongs_to :user
- belongs_to :item
