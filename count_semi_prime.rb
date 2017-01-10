def array_of_factors(n)
  factors = [0] * (n + 1)
  i = 2
  while i * i <= n
    if factors[i].zero?
      k = i * i
      while k <= n
        factors[k] = i if factors[k].zero?
        k += i
      end
    end
    i += 1
  end
  factors
end


def prime_factors(num, factors_array)
  res = []
  while factors_array[num] > 0
    res << factors_array[num]
    num /= factors_array[num]
  end
  res << num
end


def solution(n, p, q)
  factors = array_of_factors(n)
  res = []
  (0...p.size).each do |idx|
    count = 0
    (p[idx]..q[idx]).each do |num|
      factors_of_num = prime_factors(num, factors)
      count += 1 if factors_of_num.size == 2
    end
    res << count
  end
  res
end
