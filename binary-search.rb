# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
  nums_size = nums.size
  mid = nums_size / 2
  mid_val = nums[mid]
  target_index = -1

  return 0 if nums[0] == target
  return mid if mid_val == target
  return (nums_size - 1) if nums[nums_size - 1] == target

  return target_index if nums_size < 4

  if target > mid_val
    i = mid + 1

    (i..nums_size - 1).each do |j|
      break target_index = j if nums[j] == target
    end
  else
    (1..mid - 1).each do |j|
      break target_index = j if nums[j] == target
    end
  end


  target_index
end
