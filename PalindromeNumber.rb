# Given an integer x, return true if x is a palindrome, and false otherwise.


def is_palindrome(x)
  #     return false if x < 0
  #     rx = x.to_s.chars.reverse
  
  #     res = x.to_s.chars.each_with_index do |n, i|
  #        break false if n != rx[i]
  #     end
  
  #    res ? true : false
   x.to_s == x.to_s.reverse
  end