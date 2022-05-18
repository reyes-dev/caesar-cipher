def caesar_cipher(string, shift_factor)
  #two alphabets to compare the string with -- uppercase and lowercase
  abc_arr = ('a'..'z').to_a
  abc_upcase_arr = ('A'..'Z').to_a
  string = string.split('')
  #iterate through each letter in the string and compare with every letter in the alphabet
  string.each_with_index do |arr_element, idx|
    abc_arr.each_with_index do |element, abc_idx|
      #If/Elsif to keep uppercase and lowercase separate
      #string array element that matches a letter in the alphabet is then changed to a new letter 'shift_factor' places ahead or behind in the alphabet 
      if abc_arr[abc_idx] == arr_element
        #Modulo 26 wraps from z to a
        string[idx] = abc_arr[(abc_idx + shift_factor) % 26]
      elsif abc_upcase_arr[abc_idx] == arr_element
        string[idx] = abc_upcase_arr[(abc_idx + shift_factor) % 26]
      end
    end
  end
  string = string.join('')
  puts string
end
caesar_cipher('What a string!', 5)