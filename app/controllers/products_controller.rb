class ProductsController < ApplicationController
  def index
    @products = Product.all
    @line_item = current_order.line_items.new
  end
end
