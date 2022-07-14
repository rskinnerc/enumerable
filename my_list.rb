require './my_enumerable'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  def each
    li = 0
    while li < @list.length
      yield @list[li]
      li += 1
    end
  end
end

list = MyList.new(1, 2, 3, 4)
puts list.all? {|e| e < 5}
puts list.all? {|e| e > 5}

puts list.any? {|e| e == 2} # true
puts list.any? {|e| e == 5} # false

print list.filter {|e| e.even?} # [2, 4]

# Each class and module should has a separate .rb file.

# Create a class MyList that has an instance variable @list.

# In MyList implement a method #each that yields successive members of @list

# mylist method should use the MyEnumerable module.

# Create a module MyEnumerable that implements the following methods 
# (they should have the same funcionality as methods in Enumerable):
# all?
# any?
# filter



# after doing all

# # Create our list
# irb> list = MyList.new(1, 2, 3, 4)
# => #<MyList: @list=[1, 2, 3, 4]>

# # Test #all?
# irb> list.all? {|e| e < 5}
# => true
# irb> list.all? {|e| e > 5}
# => false

# # Test #any?
# irb> list.any? {|e| e == 2}
# => true
# irb> list.any? {|e| e == 5}
# => false

# # Test #filter
# irb> list.filter {|e| e.even?}
# => [2, 4]
