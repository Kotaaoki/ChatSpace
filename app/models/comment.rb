class Comment < ActiveRecord::Base
	belongs_to :user
end
# モデルの削除必要？