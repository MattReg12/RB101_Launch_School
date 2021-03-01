# 1

# def rotate_array(arr)
#   new_arr = arr.clone
#   new_arr.append(new_arr[0])
#   new_arr.shift
#   new_arr
# end
# array = [7, 3, 5, 2, 9, 1]
# p rotate_array(array)
# p array

# or 

# def rotate_array2(arr)
#   new_arr = []
#   arr.each do |item|
#     next if item == arr[0]
#     new_arr << item
#   end
#   new_arr.append(arr[0])
#   new_arr
# end

# or LS way

def rotate_array3(arr)
  arr[1..-1] + [arr[0]]
end
array = [7, 3, 5, 2, 9, 1]
p rotate_array3(array)
p array