#add
def add(x,y)
  z = x + y
end

#subtract
def subtract(x,y)
  z = x - y
end

#sum
def sum(array)
  numbers = 0
  array.each {|x| numbers += x}
  numbers
end

#multiply
def multiply(array)
  numbers = 1
  #can't start with 0 due to the fact if you do, everything will come out as zero
  array.each {|x| numbers *= x}
  numbers
end

#power
def power(x,y)
  x**y
end

#factorial
def factorial(x)
  if x <= 0 
    1
    #factorial of zero and one are equal to one
  else
    x * factorial(x-1)
  end
end