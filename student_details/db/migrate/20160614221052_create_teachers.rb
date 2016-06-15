class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
    	t.integer :user_id
    	t.integer :standard_id
    	t.integer :subject_id
    	t.string :teacher_name
    	t.integer :teacher_age
    	t.string :phone_no
    	t.string :standard_name
    	t.string :subject_name
      t.timestamps
    end
  end
end
