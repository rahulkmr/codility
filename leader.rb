def leader(a)
  size, value, candidate = 0, nil, -1
  a.each do |el|
    if size.zero?
      size += 1
      value = el
    else
      if el != value
        size -= 1
      else
        size += 1
      end
    end
  end
  return -1 if size.zero?

  candidate = value
  count = a.reduce(0) {|sum, el| el == candidate ? sum + 1 : sum }
  count > a.size / 2 ? candidate : -1
end

puts leader([4,6,6,6,6,8,8])
puts leader([1,2,3,4,5,6])
