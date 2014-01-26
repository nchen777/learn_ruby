def translate(x)
  alphabets = ("A".."z").to_a
  vowels = %w[A E I O U a e i o u]
  consonants = alphabets - vowels
  #array subtraction gives you what is leftover that doesn't overlap
  #array with all letters upcase and lowcase
  
  specials = %w[S Q U s q u]
  #special case for words with qu or real special case of squ
  
  multi_word = x.split(" ").map do |word|
    #split word phrases into separate words to apply the method directly to each word
    
    if vowels.include?(word[0])
      word + "ay"
      #search word and see if it begins with vowel matching from vowel array 
      #if it does add ay to the end
      
    elsif specials.include?(word[0]) && specials.include?(word[1]) && specials.include?(word[2])
      word[3..-1] + word[0..2] + "ay"
    elsif specials.include?(word[0]) && specials.include?(word[1])
      word[2..-1] + word[0..1] + "ay"
      #search word and see if it matches with the specials
      #if it does move first three letters or first two letters to 
      
    elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
      word[3..-1] + word[0..2] + "ay"
    elsif consonants.include?(word[0]) && consonants.include?(word[1])
      word[2..-1] + word[0..1] + "ay"
    elsif consonants.include?(word[0])
      word[1..-1] + word[0] + "ay" 
      #search word and see if it begins with consonants from consonant array 
      #if it does take letters starting from end and omit X letters
      #then add letters to the end of it and add ay 
    end
  end
  multi_word.join(" ")
end