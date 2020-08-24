#https://leetcode.com/problems/add-strings/

def add_strings(num1, num2)
  return get_int_value(num1) + get_int_value(num2)
end

def get_int_value(num)
  numVal = 0
  (0...num.length).to_a.each do |i|
    strInt = num[num.length - 1 - i]
    numVal += ((strInt.ord - 48) * (10 ** i))
  end

  return numVal
end

puts(add_strings('10', '40'))