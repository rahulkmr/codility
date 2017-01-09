def max_slice(a)
  ending, slice = 0, 0
  a.each do |el|
    ending = [0, ending + el].max
    slice = [slice, ending].max
  end
  slice
end

puts max_slice([5, -7, 3, 5, -2, 4, -1])
