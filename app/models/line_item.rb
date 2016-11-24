# == Schema Information
#
# Table name: line_items
#
#  id          :integer          not null, primary key
#  product_id  :integer
#  order_id    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  quantity    :integer
#  unit_price  :decimal(12, 3)
#  total_price :decimal(12, 3)
#

class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :order
end
