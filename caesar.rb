def caesar_cipher(string, num)
  string_array = string.codepoints
  string_array.each_with_index do |char, index|
    if char.between?(97, 122) || char.between?(65, 90)
      num.times do
        if string_array[index] == 122 || string_array[index] == 90
          string_array[index] = string_array[index] - 26
        end
        string_array[index] += 1
      end
    end
  end
  p string_array.pack("U*")
end

caesar_cipher("Hello World!", 3)

#char += num
#char.chr