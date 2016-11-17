class CreateProvinces < ActiveRecord::Migration[5.0]
  def change
    create_table :provinces do |t|
      t.string :name
      t.decimal :tax_rate
      t.references :country, foreign_key: true

      t.timestamps
    end
  end
end
