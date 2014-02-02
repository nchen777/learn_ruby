class RPNCalculator
  attr_accessor :stack
  
  def initialize
    @stack = []
  end
  
  def value
    return @stack[-1]
    #use return to have it spit out the number that is in the array
  end
  
  def push(number)
    @stack.push(number)
    #shoves number into array
  end
  
  def pop
    while true
      x = @stack.pop
      if x.nil?
        raise "calculator is empty"
      else
        return x
      end
    end
    #rips last number put into array out of array
    #pop follows LIFO
  end
  
  def plus
    @stack.push(pop + pop)
    #rips last two number shoved into array, then sums those two numbers, afterwards shoves the sum back into array
    # that is why  pushing 2, 3, 4 the first plus gives you 7, take out 3 and 4 and sum = 7, then shove into array giving you 2 and 7, then second plus gives you 9 b/c you take out 2 and 7 and sum = 9
  end
  
  def minus
    last = pop
    @stack.push(pop - last)
    #want to get -1, so first pop the last number in(3), then pop the next last number, and then subtract the second last number from first last number 2-3
  end
  
  def divide
    last = pop
    @stack.push(pop / last.to_f)
    #want to divide by last number, so need to pop it first so you can divide second to last number by it
  end
  
  def times
    @stack.push(pop * pop)
  end
  
  def tokens(input)
    symbols = %w[+ - * /]
    input.split.map do |things|
      if symbols.include?(things)
        things.to_sym
        #make the symbols into symbols
      else things.to_f
        #make everything else into floats
      end
    end
  end
  
  def evaluate (input)
    tokens(input).each do |things|
      if things == :+
        plus
      elsif things == :-
        minus
      elsif things == :*
        times
      elsif things == :/
        divide
      else 
        push(things)
      end
    end
    value
  end
  
   
end