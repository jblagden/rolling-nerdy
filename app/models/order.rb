# == Schema Information
#
# Table name: orders
#
#  id          :integer          not null, primary key
#  customer_id :integer
#  date        :date
#  status_id   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  subtotal    :decimal(12, 3)
#  tax         :decimal(12, 3)
#

class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :status

end
