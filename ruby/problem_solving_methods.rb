
def simple_search(int, arr)
  arr.include?(int)
end

arr = [1, 2, 3]
simple_search(3, arr)

#Release 1
#input n
#if n=1 -> 1
#if n=2 -> 2
#if n = 100 -> 218922995834555169026

#recursion resource http://ruby.bastardsbook.com/chapters/recursion/

def fibonacci(n)
  if n == 1
    1
  elsif n == 2
    1
  else
    fibonacci(n-1) + fibonacci(n-2)
  end
end

puts "#{n}'s fibonacci value is #{fibonacci(n)}'"
#Driver code
p fibonaci(100) == 218922995834555169026
