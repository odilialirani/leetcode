# https://leetcode.com/problems/design-a-stack-with-increment-operation/

class CustomStack
    def initialize(max_size)
        @max_size = max_size
        @stack = []
    end

    def push(x)
        @stack << x if @stack.count < @max_size
    end

    def pop()
        return -1 if @stack.count == 0
        val = @stack[-1]
        @stack.delete_at(-1)
        return val
    end

    def increment(k, val)
        @stack.each_with_index do |v, i|
           if i < k
               @stack[i] += val
           else
              break 
           end
        end
    end
end
