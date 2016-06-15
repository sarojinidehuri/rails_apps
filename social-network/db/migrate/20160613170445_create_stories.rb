class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
    	t.integer :user_id
    	t.string :blog_name
    	t.text :blog_description
      t.timestamps
    end
  end
end
