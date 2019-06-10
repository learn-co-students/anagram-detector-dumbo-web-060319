# Your code goes here!
class Anagram
    attr_accessor :word

    def initialize(word)
    @word = word
    end

    def match(array)

        matching_words = []
        word_a = word.split("")

        array.each do |word_b|
        word_b = word_b.split("")
            if word_a.sort == word_b.sort
                matching_words << word_b.join("")
            end
        end
        return matching_words
    end

    
end