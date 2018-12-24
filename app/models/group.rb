class Group < ActiveRecord::Base
	has_many :users_groups
	has_many :users, throght: :users_groups
end
