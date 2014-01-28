class Dictionary
  
  def initialize 
    @entries = {}
  end
  
  def entries
    @entries
  end
  
  def add (word)
    if word.class == Hash
      key = nil
      value = nil
      word.each_key {|x| key = x}
      word.each_value {|y| value = y}
      @entries[key] = value
    else word.class == String
      @entries[word] = nil
    end
  end
  
  def include?(key)
    @entries.each_key do |x|
      return true if x == key
    end
    false
  end
  
  def keywords
    @entries.keys.sort
  end
  
  def find (word)
    result = {}
    @entries.each_pair do |key, definition|
      if key =~ /^#{word}/
        result[key] = definition
      end
    end
    result
  end
  
  def printable
    @entries.map do |word|
      %Q{[#{word.first}] "#{word.last}"}
    end.sort.join("\n")
  end

end