def caesar_cipher(text_string, shift_amount = 3)
	cipher = ''
	text_string.each_char do |letter|
		num = letter.ord + (shift_amount % 26) 
		if letter =~ /[A-Z]/ && num > 90 # 90 is 'Z' ASCII ord value
			num = (num % 90) + 64 # 64 is 'A'
		elsif letter =~ /[a-z]/ && num > 122 # 122 is 'z' ASCII ord value
		 	num = (num % 122) + 96 # 96 is "a"
		else
			num = letter.ord
		end
	cipher += num.chr
	end
	return cipher
end

s = "This is a string!"
running_the_cipher = caesar_cipher(s, 8)
puts running_the_cipher