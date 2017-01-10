def sieve(n)
  sieve = [true] * (n + 1)
  sieve[0] = sieve[1] = false
  i = 2
  while i * i <= n
    if sieve[i]
      k = i * i
      while k <= n
        sieve[k] = false
        k += i
      end
    end
    i += 1
  end
  sieve
end

puts sieve(10).each_with_index.map {|el, idx| el ? idx : nil }.compact
