arr = [2, 5, 8, 12, 16, 23, 38, 56, 72, 91]
key = 12
low=0
high=arr.length-1


def binary_search(arr, low, high, key)
  while(low <= high)
		mid_index = low+((high-low)/2)
		if (key == arr[mid_index])
			return mid_index
		elsif (key<arr[mid_index])
			high=mid_index-1
		elsif (key>arr[mid_index])
			low = mid_index+1
		end
	end
	return -1
end

result = binary_search(arr, low, high, key)
(result == -1) ? (puts "Element is not present in array") : (puts "Element is present at index #{result}")
