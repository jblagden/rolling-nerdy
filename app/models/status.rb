# == Schema Information
#
# Table name: statuses
#
#  created_at :datetime         not null
#  id         :integer          not null, primary key
#  name       :string
#  updated_at :datetime         not null
#

class Status < ApplicationRecord
  validates :name, presence: true

  has_many :orders
end
