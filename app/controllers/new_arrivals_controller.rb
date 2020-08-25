class NewArrivalsController < ApplicationController
  def index
    @products = Product.all
  end
end
