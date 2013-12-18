# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Customer.create(name: 'John Johnson', email: 'jj@aol.com', credit_card_no:  1234)

Employee.create(name: 'Tony Smith', total_sales: 1500, photo: 'rails.png')

Item.create(name: 'Antonio', barcode: 87456432, quantity_on_hand: 4, Description: 'Ladies Shoe', Colour: 'Brown', photo: 'rails.png')