# A stream of data is received and needs to be reversed.

# Each segment is 8 bits long, meaning the order of these segments needs to be reversed

def data_reverse(data)
  arr = []
  initial = 8
  prev = 0
  
  while initial <= data.size
    arr << data[prev...initial]
    
    prev = initial
    initial += 8
  end
  arr.reverse.flatten
end