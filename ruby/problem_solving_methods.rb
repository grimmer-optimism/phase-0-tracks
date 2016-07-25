
def simple_search(int, arr)
  arr.include?(int)
end

arr = [1, 2, 3]
p simple_search(3, arr)

#Release 1
#input n
#if n=1 -> 1
#if n=2 -> 2
#if n = 100 -> 218922995834555169026

#recursion resource http://ruby.bastardsbook.com/chapters/recursion/
n= 100
def fibonacci(n)
  if n == 1
    1
  elsif n == 2
    1
#wnat output to be the sum of two numbers
  else
    fibonacci(n-1) + fibonacci(n-2)
  end
end

#Driver code
p fibonacci(100) == 218922995834555169026

#Release 2
#Choosing to do bubble sort
#Each element compared to the one next to it and swap if the one on the left is larger
#If I have an array [9, 5, 4, 3] it will return [3, 4, 5, 9]

#2. I found both a video and an article on bubble sort. I felt that both helped me equally. I've
#always been comfortable reading to learn or visually.

#3. Patience! One of my weaknesses is I like to do things fast and quick. My study is more about
#finding the optimal solution, not necessarily the first one I can build that works.
#I do feel frustration and stress as I struggle, but I remind myself that these are the feelings of growth
#and the moreI feel them the more comfortable I will become in these moments

#Check first two elements if index 0 > 1. If true swap /w destrutive method and restart loop
#if false, check elements 1 > 2. If true swap /w destrutive method and restart loop
#If 1 > 2 true, move to postiion 2 > 3 check.
#Worst case scenario descending array so loop will run one less time than the array's length


#elements could still be wrong after first pass through. Loop run n-1 times

def bubble_sort(array)
  n = array.length

  loop do
      swapped = false

      (n-1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
  end

  break if not swapped
  end
  array
end

a = [1, 3, 2]
p bubble_sort(a)
