class AddPriceTypeToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :price_type, :string
  end
end
