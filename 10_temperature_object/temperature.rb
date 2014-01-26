class Temperature
  def initialize(opts = {})
    @options = opts
    #wanted an options hash
    #got example from http://stackoverflow.com/a/17013878
  end
  
  def in_celsius
    @options.key?(:c) ? @options[:c] : (@options[:f] - 32) * 5.0 / 9.0
    #.key? returns a true or false statement
    #ternary operator written using ? and :
    #checks key to see if it is celsius, if TRUE returns celsius, else it takes the fahrenheit number and converts it to celsius
  end
    
  def Temperature.from_celsius(x)
    Temperature.new(:c => x)
    #note: can use self.method instead of CLASS_NAME.method
  end
    
  def in_fahrenheit
    @options.key?(:f) ? @options[:f] : (@options[:c] * 1.8) + 32
    #.key? returns a true or false statement
    #ternary operator written using ? and :  
    #checks key to see if it is fahrenheit, if TRUE returns fahrenheit, else it takes the celsius number and converts it to fahrenheit
  end

  def Temperature.from_fahrenheit(x)
    Temperature.new(:f => x)
  end
  
  def ftoc(f)
    n = f - 32
    o = n * 5
    p = o / 9
  end

  def ctof(c)
    (c * 1.8)+32
  end

end

class Celsius < Temperature
  def initialize(c)
    super(:c => c)
    #super looks up the inheritance chain and calls for method of same name on next highest class
    #pg 127 of beginning ruby
  end
end

class Fahrenheit < Temperature
  def initialize(f)
    super(:f => f)
    #super looks up the inheritance chain and calls for method of same name on next highest class
    #pg 127 of beginning ruby
  end
end