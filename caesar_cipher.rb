#take arguments string and shift
def caesar_cipher(string, shift)
  shifted_array = []
  #split string to Array
  string_array = string.split("")
  #for each character check if a-Z
  for i in 0..string_array.length-1
    #check if character is a-z
    if (string_array[i].ord > 96 && string_array[i].ord < 123)
      alpha_position = string_array[i].ord - 96
      shifted_position = alpha_position + shift
      #  shift wrapping z-a
      new_character_num = (shifted_position % 26) + 97
      shifted_array << new_character_num.chr 
    #else if char = A-Z  
    elsif (string_array[i].ord > 64 && string_array[i].ord < 91)
      alpha_position = string_array[i].ord - 64
      shifted_position = alpha_position + shift
      #  shift wrapping Z-A
      new_character_num = (shifted_position % 26) + 65
      #  add to new Array
      shifted_array << new_character_num.chr 
      #else add to new array
    else
      shifted_array << string_array[i]
    end
  end
  #return shifted string
  return shifted_array.join
end
caesar_cipher("This code really works great?!?!",500)
