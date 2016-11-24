class CartsController < ApplicationController
  def show
    @line_items = current_order.line_items
  end
end
