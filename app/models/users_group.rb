class UsersGroup < ActiveRecord::Base
	belongs_to :User
	belongs_to :group
	
end
