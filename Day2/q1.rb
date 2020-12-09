input_data = File.read("input.txt").split

accumulator = 0

input_data.each_with_index{ |row, index|
  if index % 3 == 0
    lower_limit = row.split("-")[0].to_i
    upper_limit = row.split("-")[1].to_i
    letter = input_data[index + 1][0]
    letter_count =  input_data[index + 2].count(letter)
    if letter_count >= lower_limit && letter_count <= upper_limit
      accumulator += 1
    end
  end
}

puts accumulator
