class CreateVendors < ActiveRecord::Migration[5.2]
  def change
    create_table :vendors do |t|
      t.string :business_name
      t.string :business_email
      t.string :business_address
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
