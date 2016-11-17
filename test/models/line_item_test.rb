# == Schema Information
#
# Table name: line_items
#
#  count      :integer
#  created_at :datetime         not null
#  id         :integer          not null, primary key
#  order_id   :integer          indexed
#  product_id :integer          indexed
#  updated_at :datetime         not null
#
# Indexes
#
#  index_line_items_on_order_id    (order_id)
#  index_line_items_on_product_id  (product_id)
#

require 'test_helper'

class LineItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
