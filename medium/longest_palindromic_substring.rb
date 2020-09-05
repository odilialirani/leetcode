# Longest Palindromic Substring
# https://leetcode.com/problems/longest-palindromic-substring/

def isPalindrome(s)
  (0...s.length/2).to_a.each do |i|
    return false unless s[i] == s[s.length - i - 1]
  end

  return true
end

# ^ just a normal method to check for palindrome -> O(n/2) == O(n) where n
# is the length of the input.
# Another way of checking is to reverse the last half, and check if first half
# is equal to the last half, however, reversing also takes time O(n/2) == O(n)

def iterate(s, core, start, nd)
  while true
    if core.length > @longest.length
      @longest = core
    end

    start -= 1
    nd += 1

    break if start < 0 || nd >= s.length
    break if s[start] != s[nd]

    core = "#{s[start]}#{core}#{s[nd]}"
  end
end

def longest_palindrome(s)
  # return s if isPalindrome(s)

  @longest = ''
  (0...s.length).to_a.each do |i|
    # iterate for odd cases
    iterate(s, s[i], i, i)

    next unless s[i] == s[i+1]

    # iterate even cases
    iterate(s, "#{s[i]}#{s[i + 1]}", i, i+1)

  end

  return @longest
end

# puts(longest_palindrome("abababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababa"))


    # core = s[i]
    # start = i
    # nd = i

    # # odd cases
    # while true
      
    #   if core.length > @longest.length
    #     @longest = core
    #   end

    #   start -= 1
    #   nd += 1

    #   break if start < 0 || nd >= s.length
    #   break if s[start] != s[nd]

    #   core = "#{s[start]}#{core}#{s[nd]}"
    # end

    # # even cases
    # next unless s[i] == s[i+1]
    # core = "#{s[i]}#{s[i + 1]}"
    # start = i
    # nd = i + 1

    # while true
    #   if core.length > longest.length
    #     longest = core
    #   end
    #   start -= 1
    #   nd += 1

    #   break if start < 0 || nd >= s.length
    #   break if s[start] != s[nd]

    #   core = "#{s[start]}#{core}#{s[nd]}"
    # end
puts(longest_palindrome("cbbd"))
