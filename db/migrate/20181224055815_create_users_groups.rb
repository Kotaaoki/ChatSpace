class CreateUsersGroups < ActiveRecord::Migration
  def change
    create_table :users_groups do |t|
    	t.string :user_id
    	t.string :group_id
      t.timestamps null: false
    end
  end
end
