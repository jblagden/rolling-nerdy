class LineItemsController < ApplicationController
  def create
    @order = current_order
    @line_item = @order.line_items.new(line_item_params)
    @order.save
    session[:order_id] = @order.id
  end

  def update
    @order = current_order
    @line_item = @order.line_items.find(params[:id])
    @line_item.update_attributes(line_item_params)
    @line_items = @order.line_items
  end

  def destroy
    @order = current_order
    @line_item = @order.line_items.find(params[:id])
    @line_item.destroy
    @line_items = @order.line_items
  end

  private

  def line_item_params
    params.require(:line_item).permit(:quantity, :product_id)
  end
end
