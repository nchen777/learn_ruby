class Book
  attr_accessor :title
  def title=x
    #read more about =x
    #it is a ruby parser
    #x is the variable for the book title
    story = x.split(" ")
    story = [story[0].capitalize] + story[1..-1].map do |word|
      #using -1 for the position of letters means it starts from the right side, think of it as with a number line
      lower = %w{a an and the in of}
      if lower.include? word
        word
      else
        word.capitalize
      end
    end
    @title = story.join(" ")
  end
end