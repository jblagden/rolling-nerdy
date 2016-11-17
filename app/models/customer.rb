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

class Customer < ApplicationRecord
  validates :full_name, presence: true
  belongs_to :province
end
