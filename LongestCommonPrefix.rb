# Write a function to find the longest common prefix string amongst an array of strings.

# If there is no common prefix, return an empty string "".

# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  return "" if strs.empty?

  prefix = strs[0]

  strs[1..-1].each do |s|
    while s.index(prefix) != 0
      prefix = prefix[0...-1]
      return "" if prefix.empty?
    end
  end

  prefix
end