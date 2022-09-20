# Your code goes here!
require "pry"

class Anagram
    attr_reader :word

    def initialize(word)
        @word = word
    end

    # def match(array)
    #     if array.include?(@word)
    #         [@word]
    #     else
    #         wordChars = @word.chars
    #         anagrams = []
    #         array.each do |testWord|
    #             binding.pry
    #             testWord.chars.each do |testChar|
    #                 if wordChars.include?(testChar)
    #                     binding.pry
    #                     wordChars.delete_at(testWord.index(testChar))
    #                     binding.pry
    #                 end
    #                 binding.pry
    #                 if wordChars == []
    #                     binding.pry
    #                     anagrams << testWord
    #                     binding.pry
    #                 end
    #                 binding.pry
    #             end
    #         end
    #         anagrams
    #     end
    # end

    def match(array)
        output = []
       if array.include?(@word)
            [@word]
       end
       array.each do |testWord|
            binding.pry
            if testWord.chars.sort == word.chars.sort
                binding.pry
                output << testWord  
                binding.pry
            end
        end
        output
    end

end


