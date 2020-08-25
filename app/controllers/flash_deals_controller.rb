class FlashDealsController < ApplicationController
  def index
    @products = Product.all
  end
end
