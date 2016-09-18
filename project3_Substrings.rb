def substrings(word, list)
	raise TypeError unless list.is_a? Array

	word_array = word.split(" ")
	substring = Hash.new
	word_array.each do |word|
		list.each do |arr_value|
			if substring.key?(word) == false
				if word == arr_value
					substring[word] = 1
				end
			else
				if word == arr_value
					substring[word] += 1
				end
			end
		end
	end
	return substring
end 


dictionary = ["below","down","go","going","horn", "down", "how","howdy","it","i","low","own", "down", "part","partner","sit"]
puts substrings("down in    the how it peanuts", dictionary)

