def crypt
  puts "Enter the sentence you would like to mangle"
  userinput = gets.chomp.to_s
  puts "Enter the number of times you would like to shift"
  shift = gets.chomp.to_i

  alphabet = [*'a'..'z', *'a'..'z', *'a'..'z', *'a'..'z', *'a'..'z', *'a'..'z', *'a'..'z', *'a'..'z', *'a'..'z', *'a'..'z', *'a'..'z']
  inputsplit = userinput.split("")
  output = ''

  inputsplit.each do |letter|
    if letter === " "
      output += " "
    else
      index = alphabet.index(letter)
      output += alphabet[index + shift]
    end
  end
  puts output
end

crypt