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

class Customer < ApplicationRecord
  validates :full_name, presence: true
  belongs_to :province
end
