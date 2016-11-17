# == Schema Information
#
# Table name: countries
#
#  created_at :datetime         not null
#  id         :integer          not null, primary key
#  name       :string
#  tax_rate   :decimal(, )
#  updated_at :datetime         not null
#

class Country < ApplicationRecord
  validates :name, presence: true
end
