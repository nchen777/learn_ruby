#echo
def echo(x)
  x
end

#shout
def shout(x)
  x.upcase
end

#repeat
def repeat(x, repeat=2)
  ([x]*repeat).join(" ")
  #use join to add a space in between the words
end

#start of word
def start_of_word(x,y)
  x[0...y]
  #use ... because we want exclusive (1-10 = 1-9) 
  #as opposed to ..'s inclusive (1-10 = 1-10)
  #arrays start from 0 and not 1
end

def first_word(x)
  x.split(" ").first
  #split the text by space then use first to get the first word
end

def titleize(x)
  entry = x.split.map do |word|
    if %(the over and).include?(word)
      word
    else
      word.capitalize
    end
  end
  entry.first.capitalize!
  #using capitalize! because it caps the word in place 
  #instead of returning a cap copy
  #need read up more!!!
  entry.join(" ")
end