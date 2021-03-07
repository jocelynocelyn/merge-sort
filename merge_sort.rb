def merge_sort(unsorted_array)
  if unsorted_array.length <= 1 
    p unsorted_array
  else
    first_half = merge_sort(unsorted_array[0...(unsorted_array.length / 2)])
    second_half = merge_sort(unsorted_array[unsorted_array.length / 2..-1])
    merge(first_half, second_half)
  end
end

def merge(first_half, second_half)
  sorted_array = []
  while !first_half.empty? && !second_half.empty? do 
    if first_half[0] < second_half[0]
      sorted_array.push(first_half.shift)
    else
      sorted_array.push(second_half.shift)
    end
  end
  p sorted_array.concat(first_half).concat(second_half)
end

array = Array.new(10) {rand(1..50)}
merge_sort(array)
array2 = Array.new(9) {rand(1..50)}
merge_sort(array2)