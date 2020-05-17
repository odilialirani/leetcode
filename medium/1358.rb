# https://leetcode.com/problems/number-of-substrings-containing-all-three-characters/
require 'pry'

def number_of_substrings(s)
  # h = {
  #   a: [],
  #   b: [],
  #   c: []
  # }
  x = {
    a: 0,
    b: 0,
    c: 0
  }
  count = 0
  s.split("").each_with_index do |c, i|
      x[c.to_sym] += 1

      if x[:a] > 0 && x[:b] > 0 && x[:c] > 0
         count += 1
          # x[c.to_sym] -= 1
      end
  end

  # count = 0

  # s.split("").each_with_index do |x, i|
  #   next if h[:a].count == 0 || h[:b].count == 0 || h[:c].count == 0

  #   if x == 'a'
  #     closest_b = h[:b].first
  #     closest_c = h[:c].first

  #     count += s.length - [closest_b, closest_c].max
  #     h[:a].delete(i)
  #   elsif x == 'b'
  #     closest_a = h[:a].first
  #     closest_c = h[:c].first

  #     count += s.length - [closest_a, closest_c].max
  #     h[:b].delete(i)
  #   else
  #     closest_b = h[:b].first
  #     closest_a = h[:a].first

  #     count += s.length - [closest_b, closest_a].max
  #     h[:c].delete(i)
  #   end 
  # end
  count

  # h[:a].count * h[:b].count * h[:c].count
end

# puts number_of_substrings("abbcbaacbccaabaabaacbabcabbaabbbbacacbcbbccabbcbbccaaccccbcbbcabaccbcbabcbabababcbbcccabbacccbaaacbaaababcbcbbbbcbbbcbabccaccbcbcacbcaabacbaabaabcbacacbcbbacbbcccbbaccbcabbcbabcaaaacaaabbccababaccacbacbbaccbaabbcbbcbcaacabbaaaababccababbbbaaaccaccbcbcaabbbaaabcccacabcbabcacbacabcabbbbbbaabacaccbbaaacabbbacbcbaaaacccbabaacbcaccaaaabcbbbbbcbabcaccaacccbabccbbcaccbabbccacbacbacbbcbcccbbbbaccabccaaabcbbcaaaccbabbaaccabbbabcabcaaaccccbabcbcacacbcccbcbbaaabbccacbacaaacbacccabbbbabccbbabcabaaacababcaabbcbcbbbccaaacaaaabbbbbaaabbcaababbbbbbbcccacbaacacbccbaccaabbaacbabacaccbbbbabcbbacccabbcccbabaacbbcbbccbcbccbaabcbcaccaaaccbcbcbabcbbaabccbcaaaabbcaccaccbbccbcbaacbbcaaabbbbccabbaabbbaaabbacbbaaabaabcbcabbaacccccababcbcaccabbbbccbccbccbababacabbabacbbbbccbabbbcbabbcbcbcbcabbbabacbbbabcabccabbcaacccccaccabaacabbababccccababbccacbabbbbaccaccaaaacbbabaaacbccbbacbbcbbcaaacaabababbcaaaaccabcbcccabacccbccaaccccacaacabcbcabbcccbaacbbcacacccaccccbccbacbacccbcaabbabcbbcbacacbaccbbbaccbcccbacaaaacacacbb")
puts number_of_substrings("abcabc")