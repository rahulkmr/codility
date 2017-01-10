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

def prime_factors(num)
  factors = array_of_factors(num)
  prime_factors = []
  while factors[num] > 0
    prime_factors << factors[num]
    num /= factors[num]
  end
  prime_factors << num
end


puts prime_factors(20)
