module MyEnumerable
  def all?
    each do |x| 
      return false unless yield(x)
    end
    true
  end

  def any?
    each do |x|
      return true if yield(x)
    end
    false
  end

  def filter

  end
end
