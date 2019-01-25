class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
  		t.text :text, null: false
  		t.string :image
  		t.integer :group_id, foreign_key: true
    	t.references :user, foreign_key: true
      t.timestamps null: false
    end
  end
end
