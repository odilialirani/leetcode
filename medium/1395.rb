# https://leetcode.com/problems/count-number-of-teams/
def num_teams(rating)
   count = 0

   rating.each_with_index do |rate, i|
    # Check decreasing (3 2 1)
    if i < rating.count - 3

    end

    # Check increasing (1 2 3)
    if i >= 2

    end

   end

   count
end