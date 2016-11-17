# == Schema Information
#
# Table name: orders
#
#  created_at  :datetime         not null
#  customer_id :integer          indexed
#  date        :date
#  id          :integer          not null, primary key
#  status_id   :integer          indexed
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_orders_on_customer_id  (customer_id)
#  index_orders_on_status_id    (status_id)
#

class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :status
end
