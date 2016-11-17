# == Schema Information
#
# Table name: statuses
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Status < ApplicationRecord
  validates :name, presence: true
end
