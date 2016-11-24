class AddTaxToOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :tax, :decimal, precision: 12, scale: 3
  end
end
