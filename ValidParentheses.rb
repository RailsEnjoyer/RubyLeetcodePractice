# Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

# An input string is valid if:

# Open brackets must be closed by the same type of brackets.
# Open brackets must be closed in the correct order.
# Every close bracket has a corresponding open bracket of the same type.

# @param {String} s
# @return {Boolean}
def is_valid(s)
  stack = []
  pairs = { ')' => '(', '}' => '{', ']' => '[' }

  s.each_char do |char|
    if pairs.values.include?(char)
      stack.push(char)
    elsif pairs.keys.include?(char)
      return false if stack.empty? || stack.pop != pairs[char]
    end
  end

  stack.empty?
end