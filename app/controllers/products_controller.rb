class ProductsController < ApplicationController
  def index
    @line_item = current_order.line_items.new

    @products = Product.all
    if params[:search]
      @products = Product.search(params[:search]).order("created_at DESC")
    else
      @products = Product.all.order("created_at DESC")
    end
  end

  def show
    @product = Product.find(params[:id])
    @line_item = current_order.line_items.new
  end
end
