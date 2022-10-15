
# The Binary Search Algorithm
#
# Divide and Conquer approach

module Algorithms
  module BinarySearch
    module_function

    # Find a target index/position from an array
    def main(numbers, target)
      min = 0
      max = numbers.size-1

      return min if numbers[min] == target
      return max if numbers[max] == target

      look_up(numbers, target, min, max)
    end

    def look_up(numbers, target, min, max)
      return -1 if max < min
      # case min 0, max 10 => (0 + 10) /2 = 5
      # case min 5, max 10 => (5 + 10) /2 = 7.5
      mid = (min + max)/2
      mid_value = numbers[mid]

      return mid if mid_value == target

      if target < mid_value
        look_up(numbers, target, min, mid-1)
      elsif target > mid_value
        min = mid

        look_up(numbers, target, mid + 1, max)
      else
        -1
      end
    end

  end
end