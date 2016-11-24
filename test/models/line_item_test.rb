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

require 'test_helper'

class LineItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
