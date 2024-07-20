require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Set up associations in the models
# This should be done in the model files themselves, not here.
# Store class should include:
# has_many :employees

# Employee class should include:
# belongs_to :store

# Create employees for @store1 (Burnaby)
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Ali", last_name: "Nazar", hourly_rate: 70)
@store1.employees.create(first_name: "Fatima", last_name: "Khan", hourly_rate: 50)

# Create employees for @store2 (Richmond)
@store2.employees.create(first_name: "Sarah", last_name: "Smith", hourly_rate: 65)
@store2.employees.create(first_name: "John", last_name: "Doe", hourly_rate: 55)
@store2.employees.create(first_name: "Emily", last_name: "Jones", hourly_rate: 60)

puts "Employees created for stores!"