def bin_search(arr, x)
  left, right = 0, arr.size - 1
  while left <= right
    mid = (left + right) / 2
    if arr[mid] == x
      return mid
    elsif arr[mid] > x
      right = mid - 1
    else
      left = mid + 1
    end
  end
  return - 1
end

puts bin_search([1, 5, 15, 25, 26, 30, 39], 26)
