def solution(a, b)
  a = a.to_f
  return ( ( ( a/b >= 0.5 && a/b <= 2 ) || ( a/b <= -0.5 && a/b >= -2 ) ) && ( (a+b) % 3 == 0 ) ) ? ( ( (a+b)/3 <= 100000000 ) ? ((a+b)/3).to_i : -2)
  : -1
end

puts solution(4, 5)
