## users テーブル

| Column              | Type     | Options                   |
| ------------------- | -------- | ------------------------- |
| name                | string   | null: false               |
| email               | string   | null: false, unique: true |
| encrypted_password  | string   | null: false               |
| body_weight         | integer  | null: false               |
| body_fat            | integer  |                           |

- has_many :tranings
- has_many :calories


## trainings テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| user               | references | null: false, foreign_key: true |
| training_name      | string     | null: false                    |
| weight             | integer    | null: false                    |
| number             | integer    | null: false                    | 
| calories_burned    | integer    | null: false                    |

- belongs_to :user

## calories テーブル
| Column          | Type       |Options                         |
| --------------- | ---------- |------------------------------- |
| user            | references | null: false, foreign_key: true |
| calories_intake | integer    | null: false                    |

- belongs_to :user
