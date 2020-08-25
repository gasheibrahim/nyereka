class RemoveproductPriceFromproducts < ActiveRecord::Migration[5.2]
  def change
  	remove_column :products, :product_price, :string
  end
end
