# Merge Sort algorithm
# Recursively sorts an array using divide-and-conquer
def merge_sort(arr)
  if arr.length < 2       # Base case: arrays of length 0 or 1 are already sorted
    arr
  else
    # Recursively split the array into left and right halves
    left = merge_sort(arr.slice(0, arr.length/2))
    right = merge_sort(arr.slice(arr.length/2, arr.length - arr.length/2))
    merge(left, right)    # Merge the sorted halves
  end
end

# Helper method to merge two sorted arrays
def merge(left, right)
  arr = []                # Array to hold merged elements

  # Merge elements until one of the arrays is empty
  until left.empty? || right.empty?
    if left.first < right.first
      arr << left.shift   # Take the smaller element from left
    else
      arr << right.shift  # Take the smaller element from right
    end
  end

  arr + left + right      # Append remaining elements (one array may still have items)
end