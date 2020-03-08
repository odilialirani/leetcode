def sort(arr)
  return arr if arr.count == 1

  mid = arr.count/2
  l = arr[0...mid]
  r = arr[mid...arr.count]

  left = sort(l)
  right = sort(r)

  # merge left and right
  merged = []
  i = 0
  j = 0
  k = 0

  left.each do |el|
    if left[i] < right[j]
      merged[k] = left[i]
      i += 1
    else
      merged[k] = right[j]
      j += 1
    end
    k += 1
  end

  while i < left.count
    merged[k] = left[i]
    k += 1
    i += 1
  end

  while j < right.count
    merged[k] = right[j]
    k += 1
    j += 1
  end

  return merged
end


arr = [5, 4, 1, 2]
puts sort(arr)