class AddProductGallery1ToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :product_gallery1, :text
  end
end
