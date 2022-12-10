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

  string_array = input_string.split(" ")
  output_hash = Hash.new(0)

  string_array.each do |input_word|
    dictionary.each do |dictionary_word|
      if input_word.include? dictionary_word
        output_hash[dictionary_word] += 1
      end 
    end 
  end 

  p output_hash
end 

getInput()
