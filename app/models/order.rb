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

  has_many :line_items
  before_create :set_order_status
  before_save :update_subtotal

  def subtotal
    line_items.collect { |li| lo.valid? ? (li.quantity * li.unit_price) : 0 }.sum
  end

  private
  def set_order_status
    self.order_status_id = 1
  end

  def update_subtotal
    #Update our subtotal property using the subtotal method
    self[:subtotal] = subtotal
  end
end
