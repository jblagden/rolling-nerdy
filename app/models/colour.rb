# == Schema Information
#
# Table name: colours
#
#  created_at :datetime         not null
#  id         :integer          not null, primary key
#  name       :string
#  updated_at :datetime         not null
#

class Colour < ApplicationRecord
  validates :name, presence: true
end
