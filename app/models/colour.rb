# == Schema Information
#
# Table name: colours
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Colour < ApplicationRecord
  validates :name, presence: true
end
