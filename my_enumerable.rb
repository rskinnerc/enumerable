module MyEnumerable
  def all?
    each do |x| 
    return  false unless yield(x)
    end
  true
  end

  def any?
    

  end

  def filter

  end
end
