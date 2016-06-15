class CreateStandards < ActiveRecord::Migration
  def change
    create_table :standards do |t|
    	t.integer :user_id
    	t.integer :subject_id
    	t.integer :student_id
    	t.integer :teacher_id
    	t.string :standard_name
      t.string :subject_name
      t.timestamps
    end
  end
end
