class SubSubCategory < ApplicationRecord
  belongs_to :category
  belongs_to :product
  belongs_to :sub_category
end
