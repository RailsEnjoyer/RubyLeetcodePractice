# Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

# You may assume that each input would have exactly one solution, and you may not use the same element twice.

# You can return the answer in any order.

def two_sum(nums, target)
  num_to_index = {}

  nums.each_with_index do |num, index|
    complement = target - num
    if num_to_index.has_key?(complement)
      return [num_to_index[complement], index]
    end
    num_to_index[num] = index
  end
end
