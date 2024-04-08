def echo(word)
    word
  end
  
  def shout(word)
    word.upcase
  end
  
  def repeat(word, times = 2)
    ([word] * times).join(' ')
  end
  
  def start_of_word(word, length)
    word[0, length]
  end
  
  def first_word(phrase)
    phrase.split.first
  end
  
  def titleize(string)
    nocaps = "and, over, the"
    string.split.map(&:capitalize).join(' ')
  end 