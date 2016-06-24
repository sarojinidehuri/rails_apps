class AddPartNumberToUsers < ActiveRecord::Migration
  def change
    add_column :users, :part_no, :string
  end
end
