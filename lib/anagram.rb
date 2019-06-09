# Your code goes here!

class Anagram
    attr_accessor :word

    def initialize(word)
        @word = word
    end

    def match(arr)
        # hold all anagrams
        anagrams = []

        # Turn word into array of characters
        chars_arr1 = @word.split("")

        arr.each do |single_word|
            # Turn word into array of characters
            chars_arr2 = single_word.split("")
            anagrams << single_word if chars_arr1.sort == chars_arr2.sort
        end

        anagrams
    end

end 