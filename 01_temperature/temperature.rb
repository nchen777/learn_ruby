#temperature celsius to fahrenheit
def ftoc(ftemperature)
  x = ftemperature - 32
  #for some reason using 5/9 didn't work, went back to basic math to change the function into its appropriate steps
  y = x * 5
  z = y / 9
end

#temperature fahrenheit to celsius
def ctof(ctemperature)
  (ctemperature * 1.8)+32
end
