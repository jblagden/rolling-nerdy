# == Schema Information
#
# Table name: types
#
#  created_at :datetime         not null
#  id         :integer          not null, primary key
#  name       :string
#  updated_at :datetime         not null
#

class Type < ApplicationRecord
  validates :name, presence: true
end
