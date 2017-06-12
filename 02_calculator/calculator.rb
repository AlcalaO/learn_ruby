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
    if n == 0 || n == 1
        n1 = 1
        return n1
    else
        n1 = 0
        for value in 1..n
            n1 += value
        end
        return n1
    end
end
