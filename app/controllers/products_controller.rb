class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  # GET /products
  # GET /products.json
  def index
    @products = Product.all
    if params[:category].blank?
      @products = Product.all.order("created_at DESC")
      else
      @category_id = Category.find_by(name: params[:category]).id
      @products = Product.where(category_id: @category_id).order("created_at DESC")
    end   
    @products = if params[:search]
      Product.where('product_name LIKE ? or product_category LIKE ?', "%#{params[:search]}%","%#{params[:search]}%").page(params[:page])
      else
       @products = Product.order_list(params[:sort_by]).page(params[:page])
    end
  end
  
  def search
    @product =product.search(params[:search])
  end

  # GET /products/1
  # GET /products/1.json
  def show
    @products = Product.all
    @product = Product.find(params[:id])
  end
  
  def welcome
    @products = Product.all
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to products_path, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to products_path, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:product_image, :image_cache)
    end

    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:product_name, :product_image, :image_cache, :product_details, :specification, :package, :product_category, :sales_price, :regular_price, :stock, :search, :user_id, :category_id, :price_type, :location, :shop, images:[])
    end
end
