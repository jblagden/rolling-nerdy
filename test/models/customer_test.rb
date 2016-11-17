# == Schema Information
#
# Table name: customers
#
#  created_at  :datetime         not null
#  email       :string
#  full_name   :string
#  id          :integer          not null, primary key
#  province_id :integer          indexed
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_customers_on_province_id  (province_id)
#

require 'test_helper'

class CustomerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
