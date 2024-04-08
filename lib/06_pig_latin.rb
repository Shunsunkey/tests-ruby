def translate(phrase)
    phrase.split.map { |word| translate_word(word) }.join(" ")
  end
  
  def translate_word(word)
    vowels = ["a", "e", "i", "o", "u"]
    if vowels.include?(word[0].downcase)
      word + "ay"
    elsif word.start_with?("qu")
      word[2..-1] + word[0..1] + "ay"
    elsif word.start_with?("sch")
      word[3..-1] + "schay"
    else
      consonants = ""
      while !vowels.include?(word[0])
        if word.start_with?("qu")
          consonants += word.slice!(0..1)
        else
          consonants += word.slice!(0)
        end
      end
      word + consonants + "ay"
    end
  end
  