class AddRegularPriceToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :regular_price, :string
  end
end
