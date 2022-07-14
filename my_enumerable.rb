module MyEnumerable
  def all?
    each do |x|
      return false unless yield x
    end
    true
  end

  def any?
    each do |x|
      return true if yield x
    end
    false
  end

  def filter
    filtered = []

    each do |x|
      filtered.push x if yield x
    end
    filtered
  end
end
