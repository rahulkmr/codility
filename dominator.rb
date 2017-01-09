def solution(a)
  size, value, value_idx = 0, nil, nil, -1
  a.each_with_index do |el, idx|
    if size.zero?
      value, value_idx = el, idx
      size += 1
    else
      if el == value
        size += 1
      else
        size -= 1
      end
    end
  end
  return -1 if size.zero?

  count = a.reduce(0) {|sum, el| el == value ? sum + 1 : sum }
  count > a.size / 2 ? value_idx : -1
end

puts solution([4,6,6,6,6,8,8,8,8,8,8])
