# Exercise 1
people_arr = [
  ['Lillian', 'Wells', 43],
  ['Ernie', 'Randall', 46],
  ['Colbert', 'Humphrey', 26]
]

people_arr.each do |person|
  puts "Hi #{person[0]} #{person[1]}! You are #{person[2]} years old today."
end

# Exercise 2
people_hash = {
  person1: {first_name: 'Giles', last_name: 'Meredith', age: 39},
  person2: {first_name: 'Cora', last_name: 'Dalton', age: 20},
  person3: {first_name: 'Aleta', last_name: 'Jarrett', age: 36}
}

people_hash.each_value do |person|
  puts "Hi #{person[:first_name]} #{person[:last_name]}! You are #{person[:age]} years old today."
end

# Exercise 3
"Hello world".each_char {|char| puts char}

# Exercise 4
i = 1
while i <= 100
  if i % 3 == 0 && i % 5 == 0
    puts 'FizzBuzz'
  elsif i % 3 == 0
    puts 'Fizz'
  elsif i % 5 == 0
    puts 'Buzz'
  else
    puts i
  end
  i += 1
end