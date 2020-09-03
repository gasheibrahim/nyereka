class AddColumnsToUser < ActiveRecord::Migration[5.2]
  def change
      add_column :users, :provider, :string, null: false, default: "" #postscript
      add_column :users, :uid, :string, null: false, default: "" #postscript
  end
end
