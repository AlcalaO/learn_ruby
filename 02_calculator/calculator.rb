#write your code here
def add (n1, n2)
    return n1 + n2
end

def subtract (n1, n2)
    return n1 - n2
end

def sum arr
    n = 0
    arr.each do |value|
        n += value
    end
    return n
end

def multiply (*n)
    n_r = 1
    n.each do |value|
        n_r *= value
    end
    return n_r
end

def power (n, pow)
    n_p = n
    for value in 1..pow-1
        n_p *= n
    end
    return n_p
end

def factorial n
    for i in 0..n
        
end
