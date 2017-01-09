def solution(a)
  return 0 if a.size < 2
  max_profit, max_price = 0, a[-1]
  (a.size - 2).downto(0) do |idx|
    max_profit = [max_profit, max_price - a[idx]].max
    max_price = [max_price, a[idx]].max
  end
  max_profit
end
