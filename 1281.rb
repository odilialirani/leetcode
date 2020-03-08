# Given an integer number n, return the difference between the product of its digits and the sum of its digits.
# https://leetcode.com/problems/subtract-the-product-and-sum-of-digits-of-an-integer/

def extract(n)
  numbers = []
  n_str = n.to_s
  
  n_str.split('').each do |i|
    numbers << i.to_i
  end

  return numbers
end

def run(n)
  numbers = extract(n)
  sum = 0
  product = 1

  numbers.each do |n|
    sum += n
    product *= n
  end

  return product - sum
end

puts run(4421)