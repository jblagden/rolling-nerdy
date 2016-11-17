class Customer < ApplicationRecord
  validates :full_name, presence: true
  belongs_to :province
end
