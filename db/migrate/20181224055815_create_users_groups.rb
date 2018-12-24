class CreateUsersGroups < ActiveRecord::Migration
  def change
    create_table :users_groups do |t|
    	t.string :user_name
    	t.string :group_name
      t.timestamps null: false
    end
  end
end
