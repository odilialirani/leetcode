# https://leetcode.com/problems/product-of-array-except-self/

# Given an array nums of n integers where n > 1, return 
# an array output such that output[i] = the product of all the elements
# of nums except nums[i]. Please solve it without division and in O(n)

# Idea: output[i] = product of elements 0..i-1 * product of elements i+1..n
# so, we'll have 2 arrays, productLeft and productRight
# For productLeft[i] = product of elements 0..i-1
# For productRight[i] = product of elements i+1..n
# After we've filled in prodL and prodR, we'll iterate over nums, and fill
# in the new values

def product_except_self(nums)
  productLeft = []
  productRight = []

  productLeft[0] = 1 # For the first element, set the value to 1 since there are no other elements left of it
  productRight[nums.length - 1] = 1 # For the last element, set the value to also be 1 since there are no other element right of it.

  (1...nums.length).to_a.each do |i|
    productLeft[i] = productLeft[i-1] * nums[i-1]
    productRight[nums.length - i - 1] = productRight[nums.length - i] * nums[length - i]
  end

  (0...nums.length).to_a.each do |i|
    nums[i] = productLeft[i] * productRight[i]
  end

  return nums # O(n) runtime.
end

# Followup: could you solve it with constant space complexity?
# the output array does not count as extra space for the purpose of space
# complexity analysis

# To do this without "extra" space, I'd create an output array
# the idea is still the same, but instead of utilizing 2 temporary arrays,
# we'll first calculate productLeft and save it into the output array.
# then, modify the input array, nums, to store productRight values.
# Lastly, iterate over the output array one more time,
# where output[i] = output[i] * nums[i], and return output in the end.