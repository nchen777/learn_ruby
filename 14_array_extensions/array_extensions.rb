class Array
  
  def sum x = 0
    self.each {|y| x += y}
    return x
  end
  
  def square x = 0
    self.collect {|y| y**2}
  end
  
  def square! x = 0
    self.collect! {|y| y**2}
  end
    
end