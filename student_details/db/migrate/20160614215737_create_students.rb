class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
    	t.integer :user_id
    	t.integer :standard_id
    	t.integer :subject_id
    	t.string :student_name
    	t.integer :student_age
    	t.string :gender
    	t.string :standard_name
    	t.string :subject_name
      t.timestamps
    end
  end
end
