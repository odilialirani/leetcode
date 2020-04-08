# https://leetcode.com/problems/minimum-add-to-make-parentheses-valid/



def min_add_to_make_valid(s)
  stack = []
  count = 0

  s.split("").each do |a|
    if a == '(' || stack.count == 0
      stack << a
      count += 1
    else
      top = stack[-1]
      
      if top =='('
        stack.delete_at(-1)
        count -= 1
      else
        stack << a
        count += 1
      end
    end
  end
  
  count
end