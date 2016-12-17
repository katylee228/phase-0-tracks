#Implement a Simple Search

array = [42, 89, 23, 1]


def search_array(arr, n)
    i = 0 
    while i < arr.length 
      if arr[i] == n
      return i 
      end 
    i += 1 
    end 
end 

p search_array(array, 1)
p search_array(array, 24)

#Calculate Fibonacci Numbers

def fib(n)
  array = [0,1]
  i = 2 
  while i < n 
    array << array[i-2] + array[i-1]
    i += 1 
  end 
  return array
end 

p fib(8)
p fib(100).last


 
#bubble sort compares each pair of adjacent items and swaps them if they are in the wrong order. 
#I searched materials on youtube to find the right turorial with visualizations 
#Visualizations definitely helped. 
#I felt overwhelmed at first.

=begin 
*Pseudocode*
*create an array of integers
*create a method that sorts integers orderly
  *compare each pair of adjacent items
  *loop them through so that all of the integers were sorted 
*print the sorted array
=end 

def bubble(array)
  n = array.length
  loop do
    swapped = false

    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end
    break if not swapped
  end
  array
end

array = [1,5,4,3,10,5,6,7,8,12,15,23,18,5]
p bubble(array)
