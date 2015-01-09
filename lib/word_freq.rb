class String
	def word_freq (input_word)
		search_array = self.split(" ")
		word_count = 0
		search_array.each do |word|
			if word == input_word
				word_count += 1
			end
		end
		word_count
	end
end