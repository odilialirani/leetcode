# https://leetcode.com/problems/reverse-words-in-a-string/
# Given an input string, reverse the string word by word.

def reverse_words(s)
  arr = s.split(" ")
  arr.each_with_index do |word, i|
    if i < arr.length / 2
      arr[i] = arr[arr.length - i - 1] 
      arr[arr.length - i - 1] = w
    end
  end
  arr.join(" ")
end