class WelcomeController < ApplicationController
  def index
    @category = Category.all
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
  def search
    @products = Product.all
    if params[:search].blank?  
      redirect_to(root_path, alert: "Empty field, Please Search Something!") and return  
    else  
      @parameter = params[:search].downcase  
      @products = Product.all.where("lower(product_name) LIKE :search", search: @parameter).page(params[:page])
    end  
  end
  def category
    @category = Category.all
    @products = Product.all
    if params[:category].blank?
      @products = Product.all.order("created_at DESC")
      else
      @category_id = Category.find_by(name: params[:category]).id
      @products = Product.all.where(category_id: @category_id).order("created_at DESC")
    end   
  end
end
