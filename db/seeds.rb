# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
50.times do
  Product.create ([{pname: Faker::Commerce.product_name,
    pprice:Faker::Commerce.price,
    psku:Faker::Commerce.promotion_code,
    pimage:Faker::Avatar.image,
    user_id:'1'
    }])
  end
