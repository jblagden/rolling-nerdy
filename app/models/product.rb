class Product < ApplicationRecord
  belongs_to :material
  belongs_to :type
  belongs_to :colour

  validates :name, presence: true
end
