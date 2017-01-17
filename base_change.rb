def base_eval(arr, base)
  sum = 0
  arr.each_with_index do |x, idx|
    sum += x * base**idx
  end
  sum
end

def negabase(num, base)
  return nil if num.nil?
  return [0] if num.zero?

  result = []
  while num != 0
    num, remainder = num.divmod(base)
    if remainder.negative?
      num, remainder = num + 1, remainder + (-base)
    end
    result << remainder
  end
  result
end

def negative_rep(arr, base)
  return negabase(-base_eval(arr, base), base)
end

puts negative_rep([1, 0, 0, 1, 1], -2)
