require 'pry-byebug'

def caesar_cipher(string, shift_factor)
  abc_arr = ('a'..'z').to_a
  abc_upcase_arr = ('A'..'Z').to_a
  string = string.split('')
  string.each_with_index do |arr_element, idx|
    abc_arr.each_with_index do |element, abc_idx|
      if abc_arr[abc_idx] == arr_element
        string[idx] = abc_arr[abc_idx + shift_factor]
      elsif abc_upcase_arr[abc_idx] == arr_element
        string[idx] = abc_upcase_arr[abc_idx + shift_factor]
      end
    end
  end
  string = string.join('')
  puts string
end