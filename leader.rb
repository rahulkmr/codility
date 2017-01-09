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
  candidate = value if size > 0
  count = a.reduce(0) {|sum, el| el == candidate ? sum + 1 : sum }
  count > a.size / 2 ? candidate : -1
end

puts leader([4,6,6,6,6,8,8])
