def who_is_bigger(a, b, c)
    if a.nil? || b.nil? || c.nil?
      "nil detected"
    elsif a >= b && a >= c
      "a is bigger"
    elsif b >= a && b >= c
      "b is bigger"
    else
      "c is bigger"
    end
  end
  
  def reverse_upcase_noLTA(string)
    string.reverse.upcase.delete("LTA")
  end
  
  def array_42(array)
    array.include?(42)
  end
  
  def magic_array(array)
    array.flatten.map { |x| x * 2 }.reject { |x| x % 3 == 0 }.uniq.sort
  end
  