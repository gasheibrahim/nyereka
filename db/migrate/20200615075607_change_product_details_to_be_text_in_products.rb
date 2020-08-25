class ChangeProductDetailsToBeTextInProducts < ActiveRecord::Migration[5.2]
  def up
    change_column :products, :product_details, :text
  end

  def down
    change_column :products, :product_details, :string
  end
end
