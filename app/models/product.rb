class Product < ApplicationRecord
  before_destroy :not_referenced_by_any_line_item
  belongs_to :user, optional: true
  belongs_to :category
  paginates_per 60
  has_many :line_items
  has_many :sub_categories
  has_many :sub_sub_categories
  validates :product_name, presence: true
  validates :product_image, presence: true
  validates :product_details, presence: true
  validates :specification, presence: true
  validates :package, presence: true
  validates :sales_price, presence: true
  validates :stock, presence: true
  validates :location, presence: true
  validates :shop, presence: true
  validates :rent_used, presence: true
  validates :images, presence: true
  has_many_attached :images
  mount_uploader :product_image, ImageUploader
  scope :product_name_like, -> (product_name) { where("product_name ilike ?", product_name)}
  private

  def not_referenced_by_any_line_item
    unless line_items.empty?
      errors.add(:base, "Line items present")
      throw :abort
    end
  end
  
  def self.search(search)
    if term
      where('product_name LIKE ? or product_category', "%#{search}%")
    else
      order('id desc')
    end
  end
  def self.order_list(sort_order)
    if sort_order == "product_name"
      order(name: :desc)
    else
      order(created_at: :desc)
    end
  end
end
