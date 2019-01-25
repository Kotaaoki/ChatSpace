== README


## users table

|Column|Type|Options|
|------|----|-------|
|name  |string      |null:false|
|email |string      |unique: true|

### Association
-	 has_many :massages
-	 has_many :users_groups
-	 has_many :groups, throught: :users_groups


## message table

|Column  |Type      |Options|
|--------|----------|-------|
|text    |text      |null: false|
|image   |string    |------|
|group_id|references|foreign_key: true|
|user    |references|foreign_key:true|

### Association

- belongs_to :user
- belongs_to :gruop


## groups table

|Column|Type      |Options|
|------|----------|-------|
|name  |string    |null: false|

### Association

-	has_many :user_groups
-	has_many :users, throght: :user_groups



## user_groups table

|Column     |Type     |Options    |
|-----------|---------|-----------|
|user_id    |string   |-----------|
|groups_id  |string   |-----------|

## Association

-  belongs_to :user
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
