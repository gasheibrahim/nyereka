class AddProductGallery2ToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :product_gallery2, :text
  end
end
