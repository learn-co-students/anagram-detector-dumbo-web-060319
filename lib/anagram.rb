# Your code goes here!
class Anagram 
  attr_accessor :word
  
  def initialize(word)
    @word = word 
  end
  
  def match(arr)
    sorted_word = @word.split("").sort.join("")
    #seems overly complicated but only way to sort a string simply is to split it first
    arr.select { |i| sorted_word == i.split("").sort.join("") } 
    
    #this is a one liner but requires helper method
    # arr.select { |i| anagram?(word, i) } 
  end
  
  def anagram?(word1, word2)
    count1 = Hash.new(0)
    count2 = Hash.new(0)
    
    word1.chars.each { |char| count1[char] += 1 }
    word2.chars.each { |char| count2[char] += 1 }
    
    count1 == count2
  end
  
  
  
  
  
end