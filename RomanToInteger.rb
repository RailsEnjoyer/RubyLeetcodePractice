# Given a roman numeral, convert it to an integer.

# @param {String} s
# @return {Integer}
def roman_to_int(s)
  hash = {
      "I" => 1,
      "V" => 5,
      "X" => 10,
      "L" => 50,
      "C" => 100,
      "D" => 500,
      "M" => 1000
  }

  total = 0
  prev = 0
  s.chars.reverse.each do |n|
      curr = hash[n]
      if prev > curr
          total -= curr  
      else
          total += curr
      end
      prev = curr
  end
  total
end

# .chars => ["I", "I", "I"]
# .each_slice(2).to_a => [["I", "I"], ["I"]]