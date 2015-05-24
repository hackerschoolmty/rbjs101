# Ruby HSMTY
# Docs:
# http://ruby-doc.org/core-2.2.0/

hacker_count = 20
puts "Welcome to Hacker School"
puts "We're #{hacker_count} hackers"  # => nil
hacker_you = gets() # input

# Hashes
# http://ruby-doc.org/core-2.2.0/Hash.html
# Key => Value
person = { :name => 'Juan', :lastname => 'Perez', :age => 20 }
# Access an element
person[:name] # => 'Juan'
# Set an element 
person[:age] = 21 # => 21
# Convention
# :Symbol => Value
# Shorter notation
person = {name: 'Juan', lastname: 'Perez', age: 21}

# Collections
# Arrays
# http://ruby-doc.org/core-2.2.0/Array.html
primes = [2, 3, 5, 7, 11, 13]
primes << 17
primes.size # => 7
primes[0] # => 2

# Ranges
# http://ruby-doc.org/core-2.2.0/Range.html
servers = (3..20)
servers.min # 3
servers.max # 20
servers.to_a # [3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]

# Handling collections
# #each
['apple', 'banana', 'orange'].each do |fruit|
  puts "I like to eat #{fruit}"
end

# Works on ranges
(1..100).each do |number|
  puts number if number % 2 == 0
end
