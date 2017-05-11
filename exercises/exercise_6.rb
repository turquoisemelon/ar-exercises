require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require 'pry'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1 = Store.find(1)
@store2 = Store.find(2)
binding.pry
  @store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
  @store1.employees.create(first_name: "Rafael", last_name: "Nadal", hourly_rate: 60)

  @store2.employees.create(first_name: "Roger", last_name: "Federer", hourly_rate: 60)
  @store2.employees.create(first_name: "Andy", last_name: "Roddick", hourly_rate: 60)
