# == Schema Information
#
# Table name: materials
#
#  created_at :datetime         not null
#  id         :integer          not null, primary key
#  name       :string
#  updated_at :datetime         not null
#

class Material < ApplicationRecord
  validates :name, presence: true
end
