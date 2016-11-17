class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :full_name
      t.string :email
      t.string :password
      t.string :street_address
      t.string :city
      t.references :province, foreign_key: true
      t.string :zip_code
      t.string :email

      t.timestamps
    end
  end
end
