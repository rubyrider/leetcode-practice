# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
  return false if x < 0
  return true if x < 10

  i = x

  reversed = 0

  while i != 0
    reminder = i % 10

    reversed = (reversed * 10) + reminder

    i = i/10
  end

  x == reversed
end