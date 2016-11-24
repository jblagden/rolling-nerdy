# == Schema Information
#
# Table name: orders
#
#  id          :integer          not null, primary key
#  customer_id :integer
#  date        :date
#  status_id   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  subtotal    :decimal(12, 3)
#  tax         :decimal(12, 3)
#

require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
