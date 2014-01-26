class Friend
  def greeting (x = nil)
    if x
      "Hello, #{x}!"
    else
      "Hello!"
    end
  end
end
