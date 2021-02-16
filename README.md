# 体温記録アプリ

## 開発背景
新型コロナの拡大でにより、職場での体温の記録がとても大切にされるようになってきました。しかし、現状私の職場では紙媒体での体温記録を実施しており、毎朝一人一人記入していくと大変時間がかかっているのが現状です。また、私の職場では残業をすることが多いので、1分の時間でも大切になってきます。そこで私は、この体温を記録する時間を少しでも短縮し残業時間を少なくすることができれば良いと思い、「体温記録アプリ」の開発に着手することにしました。


## アプリ概要
・使用言語：Ruby on rails, Javascript
・開発人数：1人
・開発期間：15日
・使用方法

### テストユーザー
Email:yyy@yyy
Password :yyyyyyyy

### 使用手順
①,Sign upをクリックしてください。

②,名前、メールアドレス、パスワードを入力してユーザーの新規登録を行ってください。

③,2階病棟、3階病棟、4階病棟のいずれかを選択して、所属するをクリックしてください。

④,体温を記録するをクリックして、本日の体温を記録してください。

⑤体温を記録後は同じグループに所属しているメンバーの体温一覧を見ることができます。
また、月を選択いていただくと記録した体温を見ることができます。

## データベース設計

### usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|mail|string|null: false|
|password|string|null: false|

### Association
has_many :temperaturas  

has_many :group_users


has_many :groups, through: :group_users

## groupテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
has_many :group_users

has_many :users, through: :group_users

has_many :temperaturas

## group_userテーブル
|Column|Type|Options|
|------|----|-------|
|user|references|foreign_key: true|
|group|references|foreign_key: true|

### Association
belongs_to :group

belongs_to :user

## temperaturas
|Column|Type|Options|
|------|----|-------|
|temperature|float|null: false|
|month_id|integer|null: false|
|day_id|integer|null: false|
|user_id|integer|foreign_key: true|
|result_date|string||
|group_id|integer|foreign_key: true|

### Association
belongs_to :user

belongs_to :group