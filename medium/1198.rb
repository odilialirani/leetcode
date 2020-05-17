# https://leetcode.com/problems/find-smallest-common-element-in-all-rows/

# @param {Integer[][]} mat
# @return {Integer}
def smallest_common_element(mat)
    return -1 if mat.length == 0 || mat[0].length == 0
    remaining = mat[0]
    
    mat.each do |row|
       remaining = remaining & row 
    end
    
    return -1 if remaining.empty?
    return remaining[0]
end