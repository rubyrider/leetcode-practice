# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  size = nums.length

  return [0, 1] if nums[0] + nums[1] == target

  j = 0

  while j < size-1
    key = nums[j]
    remains = target - key

    next_target = search(nums, remains, j+1, size-1)

    return [j, next_target] if (key + nums[next_target]) == target && next_target != -1

    j += 1
  end
end

def search(nums, target, low, high)
  return high if target == nums[high]
  return low if target == nums[low]

  return -1 if low > high

  return low if target == nums[low]

  mid = low + (high - low) / 2

  if nums[mid] > target
    search(nums, target, mid+1, high)
  else
    search(nums, target, low+1, mid)
  end
end