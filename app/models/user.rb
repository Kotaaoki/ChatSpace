class User < ActiveRecord::Base
	 has_many :comments
	 has_many :massages
	 has_many :users_groups
	 has_many :groups, throught: :users_groups
end
