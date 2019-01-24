== README



## users table

|Column|Type|Options|
|------|----|-------|
|name  |string      |null:false|
|------|timestamps  |null:false|
|email |string      |unique: true|

### Association
- 	 has_many :comments
-	 has_many :massages
-	 has_many :users_groups
-	 has_many :groups, throught: :users_groups



## comment table

|Column  |Type      |Options|
|--------|----------|-------|
|comment |text      |foreign_key: true|
|group_id|integer   |foreign_key:true|
|image   |string    |------|
|user    |references|foreign_key:true|
|--------|timestamps|null:false|

### Association

- belongs_to :user



## message table

|Column  |Type      |Options|
|--------|----------|-------|
|message |text      |user, foreign_key: true|
|image   |string    |------|
|group_id|integer   |foreign_key: true|
|user    |references|foreign_key:true|
|-----   |timestamps|null: false|

### Association

- belongs_to :user



## groups table

|Column|Type      |Options|
|------|----------|-------|
|name  |string    |null: false|
|------|timestamps|null: false|

### Association

-	has_many :users_groups
-	has_many :users, throght: :users_groups



## users_groups table

|Column     |Type     |Options    |
|-----------|---------|-----------|
|user_name  |string   |-----------|
|groups_name|string   |-----------|
|-----------|timestaps|null: false|

## Association

-  belongs_to :User
-  belongs_to :group


--------------------------------------


This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


Please feel free to use a different markup language if you do not plan to run
<tt>rake doc:app</tt>.
