class User < ActiveRecord::Base
	 has_many :massages
	 has_many :user_groups
	 has_many :groups, throught: :user_groups
end
