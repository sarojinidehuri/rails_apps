class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
    	t.integer :user_id
    	t.integer :student_id
    	t.integer :teacher_id
    	t.string :subject_name
      t.timestamps
    end
  end
end
