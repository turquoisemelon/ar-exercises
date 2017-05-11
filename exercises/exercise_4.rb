require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

  @store3 = Store.new(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
  @store4 = Store.new(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
  @store5 = Store.new(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

  @store3.save
  @store4.save
  @store5.save

  puts Store.count

  @mens_stores = Store.where(mens_apparel: true)
  puts @mens_stores

  @mens_stores.each do |item|
    puts item.name
    puts item.annual_revenue
  end

@women_stores = Store.where(womens_apparel: true, annual_revenue: 0..1000000)

puts @women_stores.count


