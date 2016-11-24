# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string
#  material_id :integer
#  type_id     :integer
#  colour_id   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  image       :string
#  price       :decimal(12, 3)
#

module ProductsHelper
end
