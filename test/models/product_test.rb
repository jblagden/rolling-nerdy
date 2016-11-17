# == Schema Information
#
# Table name: products
#
#  colour_id   :integer          indexed
#  created_at  :datetime         not null
#  id          :integer          not null, primary key
#  material_id :integer          indexed
#  name        :string
#  price       :integer
#  type_id     :integer          indexed
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_products_on_colour_id    (colour_id)
#  index_products_on_material_id  (material_id)
#  index_products_on_type_id      (type_id)
#

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
