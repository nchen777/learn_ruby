def reverser
  yield.split(" ").map(&:reverse).join(" ")
  #find out more about "&:" and yield
end

def adder x = 1
  yield + x
end

def repeater x = 1
  x.times {yield}
end