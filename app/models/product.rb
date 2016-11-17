class Product < ApplicationRecord
  belongs_to :material
  belongs_to :type
  belongs_to :colour
end
