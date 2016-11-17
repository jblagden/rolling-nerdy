# == Schema Information
#
# Table name: customers
#
#  id          :integer          not null, primary key
#  full_name   :string
#  email       :string
#  province_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class CustomerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
