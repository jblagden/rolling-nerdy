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

class Customer < ApplicationRecord
  validates :full_name, presence: true
  belongs_to :province
end
