def solution(a)
  max_ending_here, max_slice = a[0], a[0]
  a[1..-1].each do |el|
    max_ending_here = [el, max_ending_here].max
    max_slice = [max_slice, max_ending_here].max
  end
  max_slice
end
