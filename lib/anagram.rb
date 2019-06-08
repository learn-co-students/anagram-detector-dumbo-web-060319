# Your code goes here!
class Anagram
  attr_accessor :word
  def initialize(word)
    @word = word
  end

  def match(arr)
    our_word=word.split("").sort.join("")
    arr.select do |each|
      each.split("").sort.join("") == our_word
    end
    end
end
