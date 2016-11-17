# == Schema Information
#
# Table name: countries
#
#  id         :integer          not null, primary key
#  name       :string
#  tax_rate   :decimal(, )
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Country < ApplicationRecord
  validates :name, presence: true
end
