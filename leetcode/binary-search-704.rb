# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}

# Search a number inside an array using binary search
# @param [Array] numbers is an input set, basically a sorted array
# @param [String] target is the value that to find out from the array
# @return target_index of the given array
def search(numbers, target)
  Algorithms::BinarySearch.main(numbers, target)
end
