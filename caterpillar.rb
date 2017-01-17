def catterpillar(arr, sum)
  right, total = 0, 0
  (0...arr.size).each do |left|
    while right < arr.size && (total + arr[right]) <= sum
      total += arr[right]
      right += 1
    end
    return [left, right] if total == sum
    total -= arr[left]
  end
  false
end

puts catterpillar([6,2,7,4,1,3,6], 12)
