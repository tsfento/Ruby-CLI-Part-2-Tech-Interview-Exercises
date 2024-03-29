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
  person1: { first_name: 'Giles', last_name: 'Meredith', age: 39 },
  person2: { first_name: 'Cora', last_name: 'Dalton', age: 20 },
  person3: { first_name: 'Aleta', last_name: 'Jarrett', age: 36 }
}

people_hash.each_value do |person|
  puts "Hi #{person[:first_name]} #{person[:last_name]}! You are #{person[:age]} years old today."
end

# Exercise 3
'Hello world'.each_char { |char| puts char }

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

# Exercise 5
def sum(sum_array)
  sum_array.sum
end

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

puts sum(numbers)

# Exercise 6
def average(avg_array)
  avg_array.sum.to_f / avg_array.length
end

puts average(numbers)

# Exercise 7
def length_finder(str_array)
  length_array = []
  str_array.each { |string| length_array << string.size }
  length_array
end

words = ["hello", "what", "is", "up", "dude"]

puts length_finder(words)

# Exercise 8
def reverse(string_to_reverse)
  string_to_reverse.reverse
end

puts reverse('hello world')

# Exercise 9
def find_longest_word(longest_array)
  longest = ''
  longest_array.each do |word|
    if word.size > longest.size
      longest = word
    end
  end
  longest
end

puts find_longest_word(words)

# Exercise 10
def high(symbol_hash)
  check_value = 0
  symbol_hash.each do |key, value|
    if value > check_value
      check_value = value
    end
  end
  symbol_hash.key(check_value)
end

high_scores = {
  :bronze => 10,
  :silver => 20,
  :gold => 30
}

puts high(high_scores)

# Exercise 11
hash = {
  :a => {
    :b => 30
  },
  :c => {
    :d => 40
  },
  :e => {
    :f => {
      :g => 50
    }
  }
}

hash.each_value do |value|
  return_value = nil
  value.each_value do |nested_value|
    if nested_value == 30
      puts nested_value
    end
  end
end

# Exercise 12
def double(input_array)
  double_array = []
  input_array.each {|num| double_array << num *= 2}
  double_array
end

numbers_two = [1, 2, 3, 4, 5]

puts double(numbers_two)

# Exercise 13
def multiply(num1, num2)
  num1 * num2
end

a = 5
b = 6

puts multiply(a, b)

# Exercise 14
def divisible_by_three(input_array)
  divisible_array = []
  input_array.each {|num| divisible_array << num if num % 3 == 0}
  divisible_array
end

numbers_three = [9, 3, 1, 8, 6, 15, 12]

puts divisible_by_three(numbers_three)

# Exercise 15
def join_arrays(array1, array2)
  array1.concat(array2)
end

arr_a = [1, 2, 3]
arr_b = [4, 5, 6]

puts join_arrays(arr_a, arr_b)