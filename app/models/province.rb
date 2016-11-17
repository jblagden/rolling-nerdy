# == Schema Information
#
# Table name: provinces
#
#  created_at :datetime         not null
#  id         :integer          not null, primary key
#  name       :string
#  tax        :integer
#  updated_at :datetime         not null
#

class Province < ApplicationRecord
  belongs_to :country

  validates :name, presence: true
end
