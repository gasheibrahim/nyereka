class AddUserRoleToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :user_role, :string, :default =>  "client"
    #Ex:- :default =>''
  end
end
