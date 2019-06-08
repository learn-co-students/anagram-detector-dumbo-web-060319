require 'pry'

class Anagram
	attr_reader :word

	def initialize(word)
		@word = word
	end

	def match(words)
		words.select {|w| w.chars.sort.join == word.chars.sort.join}
	end
end

