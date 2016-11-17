# == Schema Information
#
# Table name: customers
#
#  id             :integer          not null, primary key
#  full_name      :string
#  email          :string
#  password       :string
#  street_address :string
#  city           :string
#  province_id    :integer
#  zip_code       :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class CustomerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
