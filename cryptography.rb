def cryptography(str, shift)
    result = ""
    
str.each_char do |char|
    if char.between?('a', 'z')
        shift_char = ((char.ord - 'a'.ord + shift) %26 + 'a'.ord).chr
        result += shift_char
    elsif char.between?('A', 'Z')
        shift_char = ((char.ord - 'A'.ord + shift) %26 + 'A'.ord).chr
        result += shift_char
    else
        result += char

    end
end

# Return the string
  result
 end

puts cryptography("What a string!", 5)