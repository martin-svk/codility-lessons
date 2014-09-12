# ==========================================================================================
# Problem specification
# ==========================================================================================
#
# A zero-indexed array A consisting of N different integers is given.
# The array contains integers in the range [1..(N + 1)], which means that exactly one element is missing.
# Your goal is to find that missing element.
# Write a function:
# def solution(a)
# that, given a zero-indexed array A, returns the value of the missing element.
# For example, given array A such that:
#   A[0] = 2
#   A[1] = 3
#   A[2] = 1
#   A[3] = 5
# the function should return 4, as it is the missing element.
# Assume that:
# N is an integer within the range [0..100,000];
# the elements of A are all distinct;
# each element of array A is an integer within the range [1..(N + 1)].
# Complexity:
# expected worst-case time complexity is O(N);
# expected worst-case space complexity is O(1), beyond input storage (not counting the storage required for input arguments).
# Elements of input arrays can be modified.

# ==========================================================================================
# Solution
# ==========================================================================================
#
def solution(a)
  # Creates hash and set values to 0
  h = Hash[(1..a.size+1).collect { |v| [v, 0] }] # => {1=>0, 2=>0, 3=>0, 4=>0, 5=>0, 6=>0}
  a.each do |value|
    h[value] = 1
  end
  # =>
  # Return hash key with value 0
  h.key(0)
end

# ==========================================================================================
# Testing
# ==========================================================================================
#
a = [2,3,1,5,4]
solution(a) # => 6
