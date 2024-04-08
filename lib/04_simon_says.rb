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
  
  def titleize input
    array = input.split(" ")
    count = 0
    array.each do |word|
        if count == 0
            word.capitalize!
            count = 1
        elsif word == "and" || word == "the"
            word.downcase!
        else
            word.capitalize!
        end
    end
    array.join(" ")
  end 