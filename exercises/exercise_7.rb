require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Ask user for a store name
print "Enter a store name: "
store_name = gets.chomp

# Attempt to create the store with the provided name
new_store = Store.create(name: store_name)

# Display errors if store creation failed
if new_store.errors.any?
  puts "Store could not be created due to the following errors:"
  new_store.errors.full_messages.each do |message|
    puts message
  end
else
  puts "Store '#{new_store.name}' created successfully!"
end