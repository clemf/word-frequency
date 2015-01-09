class String
	def word_freq (input_word)
		search_array = self.downcase.split(/\W+/)
		match_count = 0
		search_array.each do |word|
			if word == input_word.downcase
				match_count += 1
			end
		end
		match_count
	end
end