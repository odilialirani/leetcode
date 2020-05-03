# https://leetcode.com/problems/count-number-of-teams/

require 'pry'

def num_teams(rating)
  count = 0

   rating.each_with_index do |a, i|
    # for each iteration, separate out the greater and lesser than into arr
    lesser = []
    greater = []
    
    (i+1...rating.count).each do |j|
      greater << rating[j] if rating[j] > a
      lesser << rating[j] if rating[j] < a
    end

    if greater.count > 1
      greater.each_with_index do |b, j|
        # get arr of greater than b
        (j+1...greater.count).each do |k|
          count += 1 if greater[k] > b
        end
      end
    end

    if lesser.count > 1
      lesser.each_with_index do |b, j|
        llesser = 0
        (j+1...lesser.count).each do |k|
          count += 1 if lesser[k] < b
        end
      end
    end
   end
   count
end

print num_teams([80,58,2,94,53,40,22,65,11,67,68,64,88,44,70,85,55,50,1,45,60,17,35,21,28,87,92,41,10,62,33,57,7,20,42,8,4,46,71,76,25,13,19,5,73])
# puts num_teams([2,5,3,4,1])
