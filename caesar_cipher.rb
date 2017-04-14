def caesar_cipher(string, key)
  string_array = Array.new
  shift = 0

  string.scan(/./) { |chr|
    char = chr.ord + key.to_i
    #special characters and numbers
    if chr =~ /^[^A-Za-z]/
      string_array[shift] = chr
      shift += 1
    #uppercase letters
    elsif chr.ord.between?(65,90)
      if char > 90
        char = char - 26 #Z-A uppercase
      end
      string_array[shift] = char.chr
      shift += 1
    #lowercase letters
    elsif char.between?(97,122)
      string_array[shift] = char.chr
      shift += 1
    #Z-A looping lowercase
    elsif char > 122
      char = char - 26
      string_array[shift] = char.chr
      shift += 1
    end
  }
  encrypt = string_array.join("")
  puts "\nencrypted text: #{encrypt}"
end

puts "Caesar Cipher Encryption"
puts "Please enter the text you would like to encrypt:"
input = gets.chomp

puts "\nPlease enter the key you would like to encrypt at (1-26):"
key = gets.chomp
#only numbers 1-26 allowed for key
until key.to_i.between?(1,26)
  puts "\nCan not encrypt with that key please enter a number 1-26:"
  key = gets.chomp
end

caesar_cipher(input, key)
