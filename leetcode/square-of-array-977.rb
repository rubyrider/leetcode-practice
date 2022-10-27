# https://leetcode.com/problems/squares-of-a-sorted-array/

# @param {Integer[]} nums
# @return {Integer[]}
def sorted_squares(nums)
  squared = []

  i = 0

  while i <  nums.size
    k = nums[i]
    squared[i] = k * k

    i += 1
  end

  Algorithms::MergeSort.main(squared)
end