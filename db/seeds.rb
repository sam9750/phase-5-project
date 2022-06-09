# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Item.destroy_all
Cart.destroy_all

item1 = item.create({:name=>"tomato", :price => 1})
item2 = item.create({:name=>"milk", :price => 3})
item3 = item.create({:name=>"bread", :price => 5.50})
item4 = item.create({:name=>"bacon", :price => 10})
item5 = item.create({:name=>"cheese", :price => 3.20})

puts "Total number of items: #{Item.all.count}"
puts "item names: #{Item.all.pluck("name")}"
puts "item1: #{item1.name} price: #{item1.price}"
puts "item2: #{item2.name} price: #{item2.price}"
puts "item3: #{item3.name} price: #{item3.price}"
puts "item4: #{item4.name} price: #{item4.price}"
puts "item5: #{item5.name} price: #{item5.price}"

# CART

puts "Total cart count: #{Cart.all.count}"