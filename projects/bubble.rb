require "pry-byebug"

def one_through(nums_to_sort)
  nums_to_sort.each_with_index.map do |val, idx|
    if idx > 0 && nums_to_sort[idx-1] > val
      nums_to_sort[idx] = nums_to_sort[idx-1]
      nums_to_sort[idx-1] = val
      p nums_to_sort
    end
  end
  nums_to_sort
end

def bubble_sort(nums_to_sort)
  nums_to_sort = one_through(nums_to_sort)
  while nums_to_sort != nums_to_sort.sort # keeps looping until sorted
    nums_to_sort = one_through(nums_to_sort)
  end
  nums_to_sort
end

bubble_sort([4,3,78,2,0,2]) # [0,2,2,3,4,78]

