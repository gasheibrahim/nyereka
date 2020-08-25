class AddSalesPriceToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :sales_price, :string
  end
end
