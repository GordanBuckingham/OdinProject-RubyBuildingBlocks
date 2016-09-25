# bubble sort algorithm method that takes an array
def bubble_sort(arr)
	sorted = false
	
	until sorted
		sorted = true
		n = 0
		while n < arr.length - 1
			if arr[n] > arr[n+1]
				arr[n], arr[n+1] = arr[n+1], arr[n]
				sorted = false
			end
			n += 1
		end
	end
	return arr
end


puts bubble_sort([4,3,78,2,0,2])

def bubble_sort_by(ary)
	sorted = false
	until sorted do
		sorted = true
		(0..ary.size-2).each do |x|
			sorted = false if yield(ary[x], ary[x+1]) < 0
		end
		(0..ary.size-2).each do |y|
			if yield(ary[y], ary[y+1]) < 0
				ary[y+1], ary[y] = ary[y], ary[y+1]
			end
		end
	end
	ary
end

print bubble_sort_by(["hi","hello","hey"]) {|left,right| right.length - left.length}
