# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!([
  {email: "admin@example.com", password: "password", encrypted_password: "$2a$11$CRBuheRwrK.B3JjBYrx.Ye3VEI.jWliX/gWuxnvrgwitLum5XZUBa", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2016-11-17 07:15:44", last_sign_in_at: "2016-11-17 07:15:44", current_sign_in_ip: "::1", last_sign_in_ip: "::1"}
])
Colour.create!([
  {name: "Red"},
  {name: "Orange"},
  {name: "Yellow"},
  {name: "Green"},
  {name: "Blue"},
  {name: "Indigo"},
  {name: "Violet"}
])
Country.create!([
  {name: "Canada", tax_rate: "5.0"}
])
Customer.create!([
  {full_name: "Justin Blagden", email: "jbemails2@gmail.com", password: "password", street_address: "Box 399", city: "Stonewall", province_id: 1, zip_code: "R0C2Z0"}
])
Material.create!([
  {name: "Plastic"},
  {name: "Copper"},
  {name: "Metal"},
  {name: "Ivory"},
  {name: "Glow"},
  {name: "Stone"}
])
Product.create!([
  {name: "Big Red D20", material_id: 1, type_id: 1, colour_id: 1, price: 20, image: "71km9I6Cl2L._SL1492_.jpg"}
])
Province.create!([
  {name: "Manitoba", tax_rate: "8.0", country_id: 1, useshst: nil},
  {name: "Alberta", tax_rate: "0.0", country_id: 1, useshst: false},
  {name: "British Columbia", tax_rate: "7.0", country_id: 1, useshst: false},
  {name: "New Brunswick", tax_rate: "15.0", country_id: 1, useshst: true},
  {name: "Newfoundland and Labrador", tax_rate: "15.0", country_id: 1, useshst: true},
  {name: "Northwest Territories", tax_rate: "0.0", country_id: 1, useshst: false},
  {name: "Nova Scotia", tax_rate: "15.0", country_id: 1, useshst: true},
  {name: "Nunavut", tax_rate: "0.0", country_id: 1, useshst: false},
  {name: "Ontario", tax_rate: "13.0", country_id: 1, useshst: true},
  {name: "Prince Edward Island", tax_rate: "14.0", country_id: 1, useshst: true},
  {name: "Quebec", tax_rate: "9.975", country_id: 1, useshst: false},
  {name: "Saskatchewan", tax_rate: "5.0", country_id: 1, useshst: false},
  {name: "Yukon", tax_rate: "0.0", country_id: 1, useshst: false}
])
Type.create!([
  {name: "d20"},
  {name: "d4"},
  {name: "d6"},
  {name: "d10"},
  {name: "d00"},
  {name: "d12"}
])
Status.create!([
  {name: "In Progress"},
  {name: "Placed"},
  {name: "Shipped"},
  {name: "Cancelled"}
])
