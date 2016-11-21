class AddUseshstToProvinces < ActiveRecord::Migration[5.0]
  def change
    add_column :provinces, :useshst, :boolean
  end
end
