#write your code here
def ftoc temp
    celsius_temp = (temp - 32) * 5/9
    return celsius_temp
end

def ctof temp
    fahrenheit_temp = temp.to_f * 9 / 5 + 32
    return fahrenheit_temp
end