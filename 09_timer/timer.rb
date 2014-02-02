class Timer
  attr_accessor :seconds
  def initialize
    @seconds = 0
  end
  def time_string
    hour = @seconds/3600
    #since dividing by interger and not float you get a whole number
    minute = (@seconds%3600)/60
    #modulus(%)uses the remainder from seconds/3600 to get the minute
    #since dividing by interger and not float you get a whole number
    second = (@seconds%3600)%60
    sprintf("%02d:%02d:%02d", hour, minute, second)
    #using sprintf to do special formating of strings
  end
end
