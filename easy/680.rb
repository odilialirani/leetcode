# https://leetcode.com/problems/valid-palindrome-ii/

def isPalindrome(s)
  (0..s.length/2).to_a.each do |i|
    return false unless s[i] == s[s.length - i - 1]
  end

  return true
end

def valid_palindrome(s)
  return true if isPalindrome(s) 
    
  (0..s.length).to_a.each do |i|
    x = s.dup
    next if s[i] == s[s.length - i - 1]
    
    x.slice!(i)
    # create a substring without the ith character
    return true if isPalindrome(x)
  end
  
  return false
end