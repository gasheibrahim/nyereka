class AddSpecificationToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :specification, :string
  end
end
