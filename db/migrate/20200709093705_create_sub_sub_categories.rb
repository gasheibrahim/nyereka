class CreateSubSubCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :sub_sub_categories do |t|
      t.string :name
      t.references :category, foreign_key: true
      t.references :product, foreign_key: true
      t.references :sub_category, foreign_key: true

      t.timestamps
    end
  end
end
