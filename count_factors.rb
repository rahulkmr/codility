def solution(n)
  i, result = 1, 0
  while i * i < n
    result += 2 if n % i == 0
    i += 1
  end
  result += 1 if i * i == n
  result
end
