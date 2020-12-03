class PigLatinizer 

    def piglatinize(string)
        string.split(" ").map{ |word| piglatinize_word(word)}.join(" ")
      end
      private
      def vowel?(character)
        character.match(/[aAeEiIoOuU]/)
      end
      def piglatinize_word(word)
        if vowel?(word[0])
          word + "way"
        else
          vowel= word.index(/[aAeEiIoOuU]/)
          consonants = word.slice(0..vowel-1)
          excess = word.slice(vowel..word.length)
          excess + consonants + "ay"
        end
      end
    end