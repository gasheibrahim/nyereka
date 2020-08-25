class RemoveCurrencyFromProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :currency, :string
  end
end
