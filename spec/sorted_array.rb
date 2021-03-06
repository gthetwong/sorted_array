class SortedArray
  attr_accessor :internal_arr # This is for convenience in the tests.

  def initialize(input_arr=[])
    @internal_arr = []
    input_arr.each {|x| add(x)}
    # Fill in the rest of the initialize method here.
    # What should you do with each element of the incoming array?
  end

  def add(new_ele)
    # Hint: Use the Array#insert method.
    @internal_arr.insert(first_larger_index(new_ele), new_ele)
  end

  def size
    @size = @internal_arr.length
  end

  def [](index)
    @internal_arr[index]
    #gets value and yields the number of the index

  end

  def first_larger_index(target, start_ind=0, end_ind=@internal_arr.size)
    # first_larger_index should find the index of the first element in the array that's larger than the "target" passed into it
    # s/the array/the sorted array
    
    mid_ind = ( end_ind + start_ind )/2 
    mid_element = @internal_arr[mid_ind]

    if @internal_arr.empty? 
      return 0
    elsif start_ind >= end_ind
      return end_ind
    elsif target == mid_element
      return mid_ind
    elsif target > mid_element
        return first_larger_index(target, mid_ind + 1, end_ind)
    elsif target < mid_element
        return first_larger_index(target, start_ind, mid_ind)
    end 
    # raise NotImplementedError.new("You need to implement the first_larger_index method!")
  end

  def index(target)
    # ind = @internal_arr.index(first_larger_index(target))
     @internal_arr.index(target)
  end
end