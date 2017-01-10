def solution(n)
  i, min = 1, 1_000_000_001
  while i * i <= n
    div, rem = n.divmod(i)
    if rem.zero?
      perimeter = 2 * (div + i)
      min = perimeter if perimeter < min
    end
    i += 1
  end
  min
end
