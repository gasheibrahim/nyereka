class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart
  has_one :order, dependent: :destroy 
  def total_price
    product.sales_price.to_i * quantity.to_i
  end
end
