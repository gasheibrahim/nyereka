class AddPackageToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :package, :string
  end
end
