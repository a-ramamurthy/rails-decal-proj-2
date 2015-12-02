class JoinTagsAndPosts < ActiveRecord::Migration
  def change
  	create_table :tags_posts, id: false do |t|
  	    t.integer :tag_id
  		  t.integer :post_id
  	end
  	add_index :tags_posts, :tag_id
  	add_index :tags_posts, :post_id
  end
end
