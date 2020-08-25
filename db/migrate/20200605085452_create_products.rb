class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :product_name
      t.text :product_image
      t.string :product_details
      t.string :product_category
      t.string :product_price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
