class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.references :material, foreign_key: true
      t.references :type, foreign_key: true
      t.references :colour, foreign_key: true
      t.integer :price

      t.timestamps
    end
  end
end
