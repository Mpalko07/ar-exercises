require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"


# Load the third store (with id = 3) from the database and assign it to an instance variable @store3
@store3 = Store.find(3)

# Delete the third store (@store3) from the database using Active Record's destroy method
@store3.destroy

# Verify that the store has been deleted by outputting the number of stores
puts "Number of stores after deletion: #{Store.count}"