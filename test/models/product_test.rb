# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string
#  material_id :integer
#  type_id     :integer
#  colour_id   :integer
#  price       :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  image       :string
#

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
