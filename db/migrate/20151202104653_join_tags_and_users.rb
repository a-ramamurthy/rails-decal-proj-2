class JoinTagsAndUsers < ActiveRecord::Migration
  def change
  	create_table :tags_users, id: false do |t|
  		t.integer :tag_id
  		t.integer :user_id
  	end
  	add_index :tags_users, :tag_id
  	add_index :tags_users, :user_id
  end
end
