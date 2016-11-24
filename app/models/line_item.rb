# == Schema Information
#
# Table name: line_items
#
#  id          :integer          not null, primary key
#  product_id  :integer
#  order_id    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  quantity    :integer
#  unit_price  :decimal(12, 3)
#  total_price :decimal(12, 3)
#

class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :order

  validates :quantity, presence: true, numericality: {only_integer: true, greater_than: 0}

  validate :product_present
  validate :order_present

  before_save :finalize

  def unit_price
    if persisted?
      self[:unit_price]
    else
      product.price
    end
  end

  def total_price
    unit_price * quantity
  end

private
  def product_present
    if product.nil?
      errors.add(:product, "is not valid or is not active.")
    end
  end

  def order_present
    if order.nil?
      errors.add(:order, "is not a valid order.")
    end
  end

  def finalize
    self[:unit_price] = unit_price
    self[:total_price] = quantity * self[:unit_price]
  end
end
