# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

country = "Australia"
state = "NSW"
cities = ["Sydney CBD", "Sydney Newtown", "Sydney Bondi Beach", "Sydney Maroubra", "Sydney Randwick", "Sydney Redfern", "Sydney Surry Hills", "Sydney King Cross", "Sydney Kingsford", "Sydney The Rocks", "Sydney North Sydney"]

cities.each do |c|
    Location.create(country: country, state: state, city: c)
end

arr = ["French","Italian","Japanese","Chinese","Mexican","Indian","Thai","Indonesian","Greek","Spanish","Turkish"]
arr.each do |name|
    Cuisine.create(name: name)
end


