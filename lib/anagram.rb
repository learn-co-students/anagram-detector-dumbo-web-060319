require 'pry'

class Anagram
  attr_accessor :word
  def initialize (word)
  	@word = word
  end

  def letters (word)
  	letters = word.chomp.split("")
  end

  def search (word)
  	letters = letters(@word)
  	test = word.split("").select {|letter| letters.include?(letter)}
  	if letters.uniq.size == test.uniq.size && @word.length == word.length
  	  word
  	else
  	  nil
  	end
  end

  def match (anagram_arr)
  	anagrams = []
  	anagram_arr.each do |an_word|
  	  if !(result = self.search(an_word)).nil?
  	    anagrams << result
  	  end
  	end
  	anagrams
  end
end

#