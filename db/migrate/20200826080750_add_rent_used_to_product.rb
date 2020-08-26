class AddRentUsedToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :rent_used, :string
  end
end
