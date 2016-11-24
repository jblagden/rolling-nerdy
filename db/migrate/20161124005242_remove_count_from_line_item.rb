class RemoveCountFromLineItem < ActiveRecord::Migration[5.0]
  def change
    remove_column :line_items, :count, :integer
  end
end
