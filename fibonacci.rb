# Iterative Fibonacci sequence generator
# Returns an array containing the first `n` Fibonacci numbers
def iteraton_fibs(n)
  arr = []                # Array to store Fibonacci numbers
  current_item = 1        # Tracks the current Fibonacci number
  next_item = 0           # Tracks the previous Fibonacci number
  i = 1                   # Counter for iterations

  until i > n             # Loop until we reach n elements
    if i.even?            # Even index: append current_item
      arr << current_item
      current_item += next_item   # Update current_item for next iteration
    else                   # Odd index: append next_item
      arr << next_item
      next_item += current_item   # Update next_item for next iteration
    end
    i += 1                # Move to the next index
  end

  arr                     # Return the array of Fibonacci numbers
end


# Recursive Fibonacci sequence generator
# Returns an array containing the first `n` Fibonacci numbers
def recursive_fibs(n, arr = [], i = 1, current_item = 1, next_item = 0)
  puts "This was printed recursively"  # Optional debug/trace message

  if i > n                # Base case: stop recursion when index exceeds n
    return arr
  elsif i.even?           # Even index: append current_item and recurse
    recursive_fibs(n, arr << current_item, i + 1, current_item + next_item, next_item)
  else                    # Odd index: append next_item and recurse
    recursive_fibs(n, arr << next_item, i + 1, current_item, next_item + current_item)
  end
end