class WelcomeController < ApplicationController
  def index
    @products = Product.all
    @categories = Category.all
    @sub_categories = SubCategory.all
    @sub_sub_categories = SubSubCategory.all
    @products = if params[:search]
      Product.where('product_name LIKE ? or product_category LIKE ?', "%#{params[:search]}%","%#{params[:search]}%").page(params[:page])
      else
       @products = Product.order_list(params[:sort_by]).page(params[:page])
    end
  end
end
