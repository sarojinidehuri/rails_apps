class AddFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :sudo, :string
    add_column :users, :init, :string
    add_column :users, :0, :string
  end
end
