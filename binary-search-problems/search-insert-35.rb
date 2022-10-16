# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
  high = nums.size-1

  look_up(nums, target, 0, high)
end

def look_up(nums, target, low, high)
  return if low > high
  return low if target <= nums[low]
  return high+1 if target > nums[high]

  mid = (low + high) / 2

  # puts "low-index: #{low} mid-index: #{mid} mid-index-value: #{nums[mid]} target: #{target}"
  # puts "low-index-value: #{nums[low]}"
  # puts "high-index-value: #{nums[high]}"

  return mid if nums[mid] == target

  if target < nums[mid]
    look_up(nums, target, low+1, mid)
  else
    look_up(nums, target,  mid+1, high)
  end
end