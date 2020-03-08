# Jewel and Stones
# You're given strings J representing the types of stones that are jewels,
# and S representing the stones you have. Each character in S is a type of stone you have.
# You want to know how many stones you have are also jewels
# The letters in J are guaranteed distinct, and all characters in J and S are letters. Letters
# are case sensitive, so a is different from A

def run(j, s)
  count =  0
  jewels = j.split('')
  s.split('').each do |stone|
    if jewels.include? stone
      count += 1
    end
    
  end
  return count
end

puts run("aA", "aAAbbbb")