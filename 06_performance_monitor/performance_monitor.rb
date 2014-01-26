def measure x = 1
  time = 0
  x.times do 
    start = Time.now
    yield
    ends = Time.now
    time += ends - start
  end
  time / x
end
#did not understand what this was asking for, do not know where to find additional reading materials to help me understand