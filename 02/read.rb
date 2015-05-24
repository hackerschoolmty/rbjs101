# Functions

def square(number)
  number * number
end

square(10) # => 100

def repeater(string, repeat)
  repeat.times do
    puts string
  end
end

repeater('Hi all', 10) # Hi all \n Hi all ...

# Blocks & Yield

def email(name='Adrian', &block)
  puts "Hola #{name}"
  yield
  puts "Espero que estes muy bien, contestame pronto"
end

email 'Elias' do
  puts "Nos vemos mañana temprano"
end

# Lambda & Reusing Code

greeter = -> { puts "Hello World" }
greeter.yield # Hello World

square = -> (number) { number * number}
square.yield(10) # 100

## Map
# Apply a function to a collection of elements

(1..5).map do |n| 
  n * n
end 
# [1,4,9,16,25]

(1..5).map {|n| n * n } # [1,4,9,16,25]

(1..5).map(&:square) # [1,4,9,16,25]

(1..5).map(&square) # [1,4,9,16,25]

## Reduce
# Reduce a collection of elements to one value

(1..5).reduce {|acum, number| acum + number }

(1..5).reduce &:+


