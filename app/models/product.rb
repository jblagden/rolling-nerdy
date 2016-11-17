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
#

class Product < ApplicationRecord
  belongs_to :material
  belongs_to :type
  belongs_to :colour

  validates :name, presence: true
end
