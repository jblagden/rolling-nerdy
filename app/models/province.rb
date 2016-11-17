# == Schema Information
#
# Table name: provinces
#
#  id         :integer          not null, primary key
#  name       :string
#  tax        :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Province < ApplicationRecord
  belongs_to :country

  validates :name, presence: true
end
