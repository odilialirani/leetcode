# Find Numbers with Even Number of Digits
# Given an array nums of integers, return how many of them contain an even number of digits

def find_numbers(nums)
  count = 0
  nums.each do |n|
    if n.to_s.split('').count % 2 == 0
      count += 1
    end
  end
  return count
end 

puts find_numbers([12,345,2,6,7896])
puts find_numbers([555,901,482,1771])