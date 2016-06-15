class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
   	t.string :name
    t.string :email
    t.string :username
    t.string :password
    t.string :confirm_password
    t.string :phone_no
    t.text :address
	t.timestamps
    end
  end
end
