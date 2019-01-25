class Group < ActiveRecord::Base
	has_many :user_groups
	has_many :users, throght: :user_groups
end
