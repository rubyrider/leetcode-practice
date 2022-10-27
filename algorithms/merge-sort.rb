module Algorithms
  module MergeSort
    module_function

    def main(numbers)
      merge_sort(numbers)
    end

    def merge_sort(numbers)
      length = numbers.size

      return numbers if length == 1

      mid = length/2

      left_numbers = merge_sort(numbers[0..mid-1])
      right_numbers = merge_sort(numbers[mid..length-1])

      merge(left_numbers, right_numbers)
    end

    def merge(left_numbers, right_numbers)
      sorted_numbers = []

      while left_numbers[0] && right_numbers[0]
        if left_numbers[0] < right_numbers[0]
          sorted_numbers << left_numbers.shift
        else
          sorted_numbers << right_numbers.shift
        end
      end

      sorted_numbers += left_numbers if left_numbers
      sorted_numbers += right_numbers if right_numbers

      sorted_numbers
    end
  end
end