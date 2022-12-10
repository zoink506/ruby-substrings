def getInput()
  puts "Enter the string to search: "
  userInput = gets.chomp
  dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  substrings(userInput, dictionary)
end

def substrings(input_string, dictionary)
  #puts "dictionary: #{dictionary}"
  #puts "string: #{input_string}"

  # Loop through each string in dictionary
  # Compare dictionary string to the input string
  # If the input string contains the dictionary string, add it to the hash

  output_hash = Hash.new(0)
  lower_input = input_string.downcase 

  dictionary.each do |word|
    found_word = lower_input.scan(word)
    output_hash[found_word[0]] += found_word.length if found_word[0] != nil
  end

  p output_hash
end 

getInput()
