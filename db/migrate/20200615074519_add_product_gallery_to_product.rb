class AddProductGalleryToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :product_gallery, :text
  end
end
