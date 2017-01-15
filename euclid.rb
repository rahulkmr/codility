def gcd(a, b)
  if a == b
    return a
  elsif a > b
    return gcd(a - b, b)
  else
    return gcd(a, b - a)
  end
end


def gcd2(a, b)
  if b > a
    return gcd2(b, a)
  elsif a % b == 0
    return b
  else
    return gcd2(b, a % b)
  end
end


def gcd_binary(a, b, res=1)
  if a == b
      res * a
  elsif a % 2 == 0 && b % 2 == 0
    gcd_binary(a / 2, b / 2, res * 2)
  elsif a % 2 == 0
    gcd_binary(a / 2, b, res)
  elsif b % 2 == 0
    gcd_binary(a, b / 2, res)
  elsif a > b
    gcd_binary(a - b, b, res)
  else
    gcd_binary(a, b - a, res)
  end
end

puts gcd(100, 15)
puts gcd2(100, 15)
puts gcd_binary(100, 15)
