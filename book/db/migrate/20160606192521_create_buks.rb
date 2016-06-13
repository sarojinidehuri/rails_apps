class CreateBuks < ActiveRecord::Migration
  def change
    create_table :buks do |t|
    	t.string :name
    	t.string :title
    	t.string :auther
    	t.string :privecy
      t.timestamps
    end
  end
end
